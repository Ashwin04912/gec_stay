import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gecw_lakx/presentation/auth/sign_in_screen.dart';
import 'package:gecw_lakx/presentation/bottom_navigation/bottom_navigation_owner.dart';
import 'package:gecw_lakx/presentation/bottom_navigation/bottom_navigation_student.dart';
import 'package:gecw_lakx/presentation/owner_home/owner_home_screen.dart';
import 'package:gecw_lakx/presentation/student_home/student_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? role;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    // Simulate a splash delay
    await Future.delayed(const Duration(seconds: 2));

    try {
      // Retrieve the saved role from SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      role = prefs.getString('role');

      // Get the current Firebase user
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        print("user logged IN");
        // If user exists, navigate based on role
        if (role == 'Student') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomNavigationBarStudentWidget()),
          );
        } else if (role == 'Hostel_Owner') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomNavigationBarOwnerWidget()),
          );
        } else {
          // Handle unexpected role (optional)
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>SignInScreen()));
          // _showError("Role not found");
        }
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>SignInScreen()));        // If no user is logged in, navigate to login or another fallback screen
        // _showError("User not logged in");
      }
    } catch (e) {
      // Handle any exceptions
      _showError("An error occurred: $e");
    }
  }

  void _showError(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your app logo or branding
            // Image.asset('assets/logo.png', height: 100, width: 100),
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // Show a loading indicator
            const SizedBox(height: 20),
            const Text(
              "Checking login status...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
