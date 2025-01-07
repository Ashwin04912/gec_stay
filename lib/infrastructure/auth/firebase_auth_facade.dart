import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/auth/auth_failures.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  

  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required String role,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      // Register user with Firebase Authentication
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      // Get the current user after registration
      final user = _firebaseAuth.currentUser;

      if (user == null) {
        return left(const AuthFailures.serverError());
      }

      // Save user details to Firestore
      await postUserRoleDetailsToDb(
        userId: user.uid,
        email: emailAddressStr,
        role: role, // Replace with dynamic role if needed
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailures.emailAlreadyInUse());
      } else if (e.code == 'network-request-failed') {
        return left(const AuthFailures.noInternetConnection());
      } else {
        return left(const AuthFailures.serverError());
      }
    } catch (e) {
      return left(const AuthFailures.serverError());
    }
  }

@override
Future<Either<AuthFailures, String>> signInWithEmailAndPassword({
  required EmailAddress emailAddress,
  required Password password,
}) async {
  final prefs = await SharedPreferences.getInstance();
  final emailAddressStr = emailAddress.getOrCrash();
  final passwordStr = password.getOrCrash();

  try {
    // Try signing in user with Firebase Authentication
    await _firebaseAuth.signInWithEmailAndPassword(
      email: emailAddressStr,
      password: passwordStr,
    );

    // Get current user
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // Store user ID in SharedPreferences
      prefs.setString('owner_userid', user.uid);

      // Fetch user data from Firestore
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (documentSnapshot.exists) {
        // Check user role
        final role = documentSnapshot.get('role');
        if (role == "Student") {
          debugPrint("Student");
          return right('student');
        } else {
          debugPrint("Hostel Owner");
          return right('hostel_owner');
        }
      } else {
        // User document not found in Firestore
        debugPrint("User document not found");
        return left(const AuthFailures.serverError());
      }
    } else {
      // No user is currently signed in
      debugPrint("No current user found");
      return left(const AuthFailures.serverError());
    }
  } on FirebaseAuthException catch (e) {
    // Handling FirebaseAuth specific errors
    if (e.code == 'user-not-found' || e.code == 'wrong-password') {
      debugPrint("User not found or wrong password");
      return left(const AuthFailures.invalidEmailAndPasswordCombinationFailure());
    } else if (e.code == 'network-request-failed') {
      debugPrint("Network request failed");
      return left(const AuthFailures.noInternetConnection());
    } else if (e.code == 'expired-credential' || e.code == 'invalid-credential') {
      debugPrint("Expired credential");
      return left(const AuthFailures.userNotFound());
    } else {
      debugPrint("FirebaseAuthException: ${e.message}");
      return left(const AuthFailures.serverError());
    }
  } catch (e) {
    // Catch any other exceptions
    debugPrint("Exception: $e");
    return left(const AuthFailures.serverError());
  }
}


  @override
  Future<Either<AuthFailures, Unit>> postUserRoleDetailsToDb({
    required String userId,
    required String email,
    required String role,
  }) async {
    try {
      // Reference to the Firestore collection
      final userCollection = FirebaseFirestore.instance.collection('users');

      // Add or update the user's role and email in the Firestore document
      await userCollection.doc(userId).set({
        'userId': userId,
        'email': email,
        'role': role,
      });

      debugPrint('User role details successfully saved to the database.');
      return right(unit);
    } on FirebaseException catch (e) {
      debugPrint('Failed to save user role details: ${e.message}');
      if (e.code == 'permission-denied') {
        return left(const AuthFailures.insufficientPermission());
      } else if (e.code == 'unavailable') {
        return left(const AuthFailures.noInternetConnection());
      } else {
        return left(const AuthFailures.serverError());
      }
    } catch (e) {
      debugPrint('Unexpected error: $e');
      return left(const AuthFailures.serverError());
    }
  }
}
