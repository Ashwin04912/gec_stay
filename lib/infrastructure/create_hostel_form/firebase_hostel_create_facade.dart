import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:gecw_lakx/domain/core/formfailures.dart';
import 'package:gecw_lakx/domain/core/location_fetch_failures.dart';
import 'package:gecw_lakx/domain/create_hostel_form/i_create_hostel_form_facade.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICreateHostelFormFacade)
class FirebaseHostelCreateFacade extends ICreateHostelFormFacade {
  @override
  Future<Either<LocationFetchFailures, Position>> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      debugPrint('Location services are disabled.');
      return left(LocationFetchFailures.locationServiceDisabled());
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        debugPrint("location access denied");
        left(LocationFetchFailures.LocationPermissionDenied());
      }
    }

    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return right(position);
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
  Future<Either<FormFailures, Unit>> saveDataToDb(
      {required String hostelName,
      required String ownerName,
      required String phoneNumber,
      required String rent,
      required String rooms,
      required String personsPerRoom,
      required Position location,
      required String vacancy,
      required String description}) async {
    try {
      DocumentReference doc =
          await FirebaseFirestore.instance.collection('hostels').add({
        'hostel_name': hostelName,
        'owner_name': ownerName,
        'phone_number': phoneNumber,
        'description': description,
        'location': {
          'latitude': location.latitude,
          'longitude': location.longitude,
        },
        'rent': rent,
        'rooms': rooms,
        'persons_per_room': personsPerRoom,
        'vacancy': vacancy,
      });

      debugPrint('Document added with ID: ${doc.id}');
      return right(unit); 
    } on FirebaseException catch (e) {
      // Firestore-specific error
      debugPrint("FirebaseException: ${e.message}");
      return left(const FormFailures.serverError());
    } catch (e) {
      // General error
      debugPrint("An error occurred: $e");
      return left(const FormFailures.serviceUnavailable());
    }
  }
}
