import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:gecw_lakx/domain/hostel_process/hostel_resp_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:gecw_lakx/domain/core/formfailures.dart';
import 'package:gecw_lakx/domain/core/location_fetch_failures.dart';
import 'package:gecw_lakx/domain/hostel_process/i_hostel_process_facade.dart';

@LazySingleton(as: IHostelProcessFacade)
class FirebaseHostelProcessFacade extends IHostelProcessFacade {
  FirebaseFirestore fireStore;
  FirebaseHostelProcessFacade({
    required this.fireStore,
  });

  @override
  Future<Either<LocationFetchFailures, LatLng>> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Geolocator.openLocationSettings();
      debugPrint('Location services are disabled.');
      return left(LocationFetchFailures.locationServiceDisabled());
    }

    // Check for location permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        debugPrint("Location access denied");
        return left(LocationFetchFailures.LocationPermissionDenied());
      }
    }

    try {
      // Get the current position
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // Convert the Position to LatLng
      LatLng latLng = LatLng(position.latitude, position.longitude);

      return right(latLng);
    } catch (e) {
      if (e is LocationServiceDisabledException) {
        debugPrint("Location services are disabled.");
        return left(LocationFetchFailures.locationServiceDisabled());
      } else if (e is PermissionDeniedException) {
        debugPrint("Location permissions are denied.");
        return left(LocationFetchFailures.LocationPermissionDenied());
      } else {
        debugPrint("Failed to get location: $e");
      }
      return left(LocationFetchFailures.networkError());
    }
  }

  @override
  Future<Either<FormFailures, Unit>> saveNewHostelData({
    required HostelResponseModel hostelData,
    required List<XFile> hostelImages,
  }) async {
    try {
      // Retrieve user ID from shared preferences
      final prefs = await SharedPreferences.getInstance();
      final String? userId = prefs.getString('owner_userid');

      if (userId == null || userId.isEmpty) {
        debugPrint("User ID is null or empty");
        return left(const FormFailures.serviceUnavailable());
      }

      // Upload images if provided
      List<String> images = [];
      if (hostelImages.isNotEmpty) {
        final imageListResult =
            await uploadHostelImages(hostelImages: hostelImages);

        final uploadedImages = imageListResult.fold(
          (failure) {
            debugPrint("Image upload failed: $failure");
            return <String>[]; // Return empty list on failure
          },
          (urls) => urls,
        );

        if (uploadedImages.isEmpty) {
          debugPrint("No images uploaded successfully");
          return left(const FormFailures.serverError());
        }
        images = uploadedImages;
      }

      // Generate hostel ID
      final String hostelId = const Uuid().v1();

      // Corrected hostelDataMap
      final Map<String, dynamic> hostelDataMap = {
        'hostelOwnerUserId': userId,
        'hostel_name': hostelData.hostelName,
        'hostelId': hostelId,
        'owner_name': hostelData.ownerName,
        'phone_number': hostelData.phoneNumber,
        'description': hostelData.description,
        'location': {
          'latitude': hostelData.location.latitude,
          'longitude': hostelData.location.longitude,
        },
        'dist_from_college': hostelData.distFromCollege,
        'isMess_available': hostelData.isMessAvailable,
        'isMensHostel': hostelData.isMensHostel,
        'rent': hostelData.rent,
        'rooms': hostelData.rooms,
        'vacancy': hostelData.vacancy,
        'imageList': images,
        'rating': '0',
        'approval': 'pending',
      };

      // Save hostel data to Firestore
      await fireStore
          .collection('my_hostels')
          .doc(userId)
          .collection('hostels')
          .doc(hostelId)
          .set(hostelDataMap);

      await fireStore
          .collection('all_hostel_list')
          .doc(hostelId)
          .set(hostelDataMap);

      debugPrint('New hostel added with ID: $hostelId');
      return right(unit);
    } catch (e) {
      debugPrint("Error saving new hostel: $e");
      return left(const FormFailures.serviceUnavailable());
    }
  }

  Future<Either<FormFailures, Unit>> editHostelData({
    required String hostelId,
    required String hostelOwnerUserId,
    required Map<String, dynamic> updatedData,
  }) async {
    try {
      await fireStore
          .collection('my_hostels')
          .doc(hostelOwnerUserId)
          .collection('hostels')
          .doc(hostelId)
          .set(updatedData,
              SetOptions(merge: true)); // Update only changed fields

      await fireStore.collection('all_hostel_list').doc(hostelId).set(
          updatedData, SetOptions(merge: true)); // Update only changed fields

      debugPrint('Hostel data updated for ID: $hostelId');
      return right(unit);
    } catch (e) {
      debugPrint("Error updating hostel: $e");
      return left(const FormFailures.serviceUnavailable());
    }
  }

  Future<Either<FormFailures, Unit>> updateHostelApprovalStatus({
    required String hostelId,
    required String hostelOwnerUserId,
    required String approvalType,
  }) async {
    try {
      if (approvalType == 'approved' || approvalType == 'rejected') {
        await fireStore
            .collection('my_hostels')
            .doc(hostelOwnerUserId)
            .collection('hostels')
            .doc(hostelId)
            .update({'approval': approvalType});

        await fireStore
            .collection('all_hostel_list')
            .doc(hostelId)
            .update({'approval': approvalType});
        debugPrint('Hostel approval updated for ID: $hostelId');
      } else if (approvalType == 'deleted') {
        await fireStore.collection('all_hostel_list').doc(hostelId).delete();
        await fireStore.collection('hostel_rating').doc(hostelId).delete();
        await fireStore
            .collection('my_hostels')
            .doc(hostelOwnerUserId)
            .collection('hostels')
            .doc(hostelId)
            .delete();
        debugPrint('Hostel deleted for ID: $hostelId');
      } else {
        debugPrint("Invalid approval type: $approvalType");
        return left(const FormFailures.serviceUnavailable());
      }

      return right(unit);
    } catch (e) {
      debugPrint("Error updating approval status: $e");
      return left(const FormFailures.serviceUnavailable());
    }
  }

  @override
  Future<Either<FormFailures, List<HostelResponseModel>>>
      getAllHostelList() async {
    try {
      // Reference the collection
      final CollectionReference hostelCollection =
          FirebaseFirestore.instance.collection('all_hostel_list');

      // Query the collection
      QuerySnapshot querySnapshot =
          await hostelCollection.where('approval', isEqualTo: 'approved').get();

      // Check if the collection is empty
      // if (querySnapshot.docs.isEmpty) {
      //   debugPrint("No data found in all_hostel_list collection");
      //   return left(const FormFailures.noDataFound());
      // }

      // Map the querySnapshot to the list of HostelResponseModel
      List<HostelResponseModel> hostels = querySnapshot.docs.map((doc) {
        // Safely parse document data
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return HostelResponseModel.fromJson(data);
      }).toList();

      debugPrint("Fetched hostels: $hostels");

      return right(hostels);
    } catch (e) {
      // Handle any exceptions
      debugPrint("Error fetching all hostel list: $e");

      // If the error might be related to a missing collection
      if (e.toString().contains('Null is not a subtype of type')) {
        debugPrint("Likely cause: Collection does not exist or has no data.");
        return left(const FormFailures.noDataFound());
      }

      return left(const FormFailures.serverError());
    }
  }

  @override
  Future<Either<FormFailures, List<HostelResponseModel>>> getOwnerHostelList(
      {required String userId}) async {
    try {
      debugPrint("api requesting uid $userId");
      // Reference to the 'myhostel' subcollection for the specific user
      final CollectionReference<Map<String, dynamic>> hostelCollection =
          FirebaseFirestore.instance
              .collection('my_hostels')
              .doc(userId)
              .collection('hostels');

      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await hostelCollection.get();
      final hostels = querySnapshot.docs.map((doc) {
        return HostelResponseModel.fromJson(doc.data());
      }).toList();

      debugPrint("i got hostels${hostels.toString()}");
      if (querySnapshot.docs.isEmpty) {
        print("no data found");
        return left(const FormFailures.noDataFound());
      }
      return right(hostels);
    } catch (e) {
      // Log and return a server failure in case of exceptions
      debugPrint("Error fetching owner hostel list: $e");
      return left(const FormFailures.serverError());
    }
  }

  @override
  Future<Either<FormFailures, Unit>> rateTheHostel({
    required String hostelId,
    required String hostelOwnerUserId,
    required String star,
    required String comment,
    required String userId,
    required String userName,
  }) async {
    try {
      final hostelRatingRef = fireStore
          .collection('hostel_rating')
          .doc(hostelId)
          .collection('ratings');

      // Check if user already rated this hostel
      final existingReviewQuery =
          await hostelRatingRef.where('userId', isEqualTo: userId).get();

      if (existingReviewQuery.docs.isNotEmpty) {
        // Get the first existing review document
        final existingReviewDoc = existingReviewQuery.docs.first;

        // Update the existing review
        await hostelRatingRef.doc(existingReviewDoc.id).update({
          'stars': star,
          'comment': comment,
          'timestamp': FieldValue.serverTimestamp(),
        });

        debugPrint("Review updated successfully.");
      } else {
        // Create a new rating object if no previous review exists
        final rating = {
          'userId': userId,
          'userName': userName,
          'stars': star,
          'comment': comment,
          'timestamp': FieldValue.serverTimestamp(),
        };

        await hostelRatingRef.add(rating);
        debugPrint("New rating added successfully.");
      }

      // Recalculate the average rating
      ratingAvgCalculation(
          hostelId: hostelId, hostelOwnerUserId: hostelOwnerUserId);

      return right(unit);
    } catch (e) {
      debugPrint('Error rating hostel: $e');
      return left(FormFailures.serverError());
    }
  }

  @override
  Future<Either<FormFailures, List<HostelResponseModel>>> getAdminHostelList(
      {required String aprovalType}) async {
    try {
      // Reference the collection
      final CollectionReference hostelCollection =
          FirebaseFirestore.instance.collection('all_hostel_list');

      // Query the collection
      QuerySnapshot querySnapshot = await hostelCollection
          .where('approval', isEqualTo: aprovalType)
          .get();

      // Check if the collection is empty
      // if (querySnapshot.docs.isEmpty) {
      //   debugPrint("No data found in all_hostel_list collection");
      //   return left(const FormFailures.noDataFound());
      // }

      // Map the querySnapshot to the list of HostelResponseModel
      List<HostelResponseModel> hostels = querySnapshot.docs.map((doc) {
        // Safely parse document data
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return HostelResponseModel.fromJson(data);
      }).toList();

      debugPrint("Fetched hostels: $hostels");

      return right(hostels);
    } catch (e) {
      // Handle any exceptions
      debugPrint("Error fetching all hostel list: $e");

      // If the error might be related to a missing collection
      if (e.toString().contains('Null is not a subtype of type')) {
        debugPrint("Likely cause: Collection does not exist or has no data.");
        return left(const FormFailures.noDataFound());
      }

      return left(const FormFailures.serverError());
    }
  }

  @override
  Future<Either<FormFailures, List<Map<String, String>>>>
      getAllratingsAndReview({
    required String hostelId,
  }) async {
    debugPrint("hostel id = $hostelId");
    try {
      // Reference to the Firestore collection
      final reviewCollection = FirebaseFirestore.instance
          .collection('hostel_rating')
          .doc(hostelId)
          .collection('ratings');

      // Fetch the reviews
      final querySnapshot = await reviewCollection.get();

      // Process the reviews into a structured format
      final reviews = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'comment': data["comment"] as String,
          'stars': data["stars"] as String,
          'userId': data["userId"] as String,
          'userName': data["userName"] as String,
        };
      }).toList();
      print(reviews);

      return right(reviews); // Return the list of reviews in the correct format
    } catch (e) {
      // Log the error and return a server error
      debugPrint('Error fetching reviews: $e');
      return left(FormFailures.serverError());
    }
  }

  @override
  Future<Either<FormFailures, List<String>>> uploadHostelImages({
    required List<XFile> hostelImages,
  }) async {
    try {
      final supabase = SupabaseClient(
        'https://mksxoiizgunbatwgjgru.supabase.co',
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1rc3hvaWl6Z3VuYmF0d2dqZ3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY3NDUwODMsImV4cCI6MjA1MjMyMTA4M30.flRm8k5nPQOoi1F63dZaL-BLvZXMLoP14cEpPur0mzA',
      );

      List<String> imageUrls = [];

      // Upload each file and store the public URL
      for (int i = 0; i < hostelImages.length; i++) {
        final file = File(hostelImages[i].path);
        final fileName =
            'images/${DateTime.now().millisecondsSinceEpoch}_$i.jpg';

        try {
          // Upload the file
          await supabase.storage.from('hostel_images').upload(
                fileName,
                file,
                fileOptions: const FileOptions(upsert: true),
              );

          // Get the public URL of the uploaded file
          final publicUrl =
              supabase.storage.from('hostel_images').getPublicUrl(fileName);
          if (publicUrl.isNotEmpty) {
            imageUrls.add(publicUrl);
          } else {
            debugPrint("Failed to get public URL for $fileName");
            return left(FormFailures.serverError());
          }
        } catch (e) {
          debugPrint("Upload failed for $fileName: ${e.toString()}");
          return left(FormFailures.serverError());
        }
      }

      return right(imageUrls);
    } catch (e) {
      debugPrint("Image uploading exception: ${e.toString()}");
      return left(FormFailures.serverError());
    }
  }

  @override
  Future<void> ratingAvgCalculation(
      {required String hostelId, required String hostelOwnerUserId}) async {
    // final fireStore = FirebaseFirestore.instance;

    try {
      QuerySnapshot snapshot = await fireStore
          .collection('hostel_rating')
          .doc(hostelId)
          .collection('ratings')
          .get();

      List<int> starRatings = snapshot.docs.map((doc) {
        final starValue = doc['stars'];
        debugPrint("Raw starValue: $starValue (${starValue.runtimeType})");

        if (starValue is num) {
          return starValue.toDouble().round(); // Convert to double and round
        } else if (starValue is String) {
          return double.tryParse(starValue)?.round() ??
              0; // Convert string to double & round
        } else {
          return 0;
        }
      }).toList();
      print(starRatings);

      double averageRating = starRatings.isNotEmpty
          ? starRatings.reduce((a, b) => a + b) / starRatings.length
          : 0.0;

      String avgRatingStr = averageRating.toStringAsFixed(2);

      // Update 'hostel_rating' collection
      await fireStore.collection('hostel_rating').doc(hostelId).set({
        'averageRating': avgRatingStr,
      }, SetOptions(merge: true));

      // Update 'all_hostel_list' collection with the calculated rating
      await fireStore.collection('all_hostel_list').doc(hostelId).set({
        'rating': avgRatingStr,
      }, SetOptions(merge: true));

      await fireStore
          .collection('my_hostels')
          .doc(hostelOwnerUserId)
          .collection('hostels')
          .doc(hostelId)
          .update({'rating': avgRatingStr});

      debugPrint("avg success");
    } catch (e) {
      debugPrint("Error: ${e.toString()}");
    }
  }

  @override
  Future<Either<Exception, Unit>> deleteHostel(
      {required String hostelId, required String hostelOwnerUserId}) async {
    try {
      await fireStore
          .collection('my_hostels')
          .doc(hostelOwnerUserId)
          .collection('hostels')
          .doc(hostelId)
          .delete();

      fireStore.collection('all_hostel_list').doc(hostelId).delete();

      fireStore.collection('hostel_rating').doc(hostelId).delete();

      return right(unit);
    } catch (e) {
      return left(Exception(e));
    }
  }

  @override
  Future<Either<FormFailures, HostelResponseModel>> getHostelById({
    required String hostelId,
  }) async {
    print("api reached $hostelId");
    try {
      print(hostelId);
      final prefs = await SharedPreferences.getInstance();
      final String? userId = prefs.getString('owner_userid');
      // Reference to the specific hostel document
      final DocumentReference<Map<String, dynamic>> hostelDocRef =
          FirebaseFirestore.instance
              .collection('my_hostels')
              .doc(userId)
              .collection('hostels')
              .doc(hostelId);

      final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await hostelDocRef.get();

      // Check if the document exists
      if (!documentSnapshot.exists || documentSnapshot.data() == null) {
        debugPrint("No hostel data found");
        return left(const FormFailures.noDataFound());
      }

      // Convert Firestore data to model
      final hostel = HostelResponseModel.fromJson(documentSnapshot.data()!);
      debugPrint("Fetched hostel: ${hostel.toString()}");

      return right(hostel);
    } catch (e) {
      // Log error and return server failure
      debugPrint("Error fetching hostel: $e");
      return left(const FormFailures.serverError());
    }
  }
}
