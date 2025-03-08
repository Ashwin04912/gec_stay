import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gecw_lakx/application/hostel_process/common_hostel_process/common_hostel_process_bloc.dart';
import 'package:gecw_lakx/main.dart';
import 'package:gecw_lakx/presentation/auth/sign_in_screen.dart';
import 'package:gecw_lakx/presentation/bottom_navigation/bottom_navigation_owner.dart';
import 'package:gecw_lakx/presentation/bottom_navigation/bottom_navigation_student.dart';
import 'package:gecw_lakx/presentation/hostel_details/hostel_details_student_app_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_links/app_links.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? role;
  final AppLinks _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;
  Uri? _deepLinkUri;

  @override
  void initState() {
    super.initState();
    _initDeepLinks();
    _checkLoginStatus();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  void _initDeepLinks() async {
    // Listen for deep links
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      setState(() {
        _deepLinkUri = uri; // Store the deep link URI
      });
      _handleDeepLink(uri);
    });

    // Check for initial deep link (if the app was opened via a deep link)
    final initialUri = await _appLinks.getInitialLink();
    if (initialUri != null) {
      setState(() {
        _deepLinkUri = initialUri; // Store the initial deep link URI
      });
      _handleDeepLink(initialUri);
    }
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
        print("User logged in");
        // If user exists, navigate based on role
        if (role == 'Student') {
          if (_deepLinkUri != null) {
            // Handle deep link for students
            _handleDeepLinkForStudent(user.uid);
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavigationBarStudentWidget(),
              ),
            );
          }
        } else if (role == 'Hostel_Owner') {
          context.read<CommonHostelProcessBloc>().add(
                CommonHostelProcessEvent.getOwnersHostelList(userId: user.uid),
              );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavigationBarOwnerWidget(userId: user.uid),
            ),
          );
        } else {
          // Handle unexpected role (optional)
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (ctx) => SignInScreen()),
          );
        }
      } else {
        // If no user is logged in, navigate to login or another fallback screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (ctx) => SignInScreen()),
        );
      }
    } catch (e) {
      // Handle any exceptions
      _showError("An error occurred: $e");
    }
  }

  void _handleDeepLinkForStudent(String userId) async {
    final hostelId = _deepLinkUri?.queryParameters['hostelId'];
    if (hostelId != null) {
      // Fetch hostel details from Firestore using hostelId
      final hostelResp = await fetchHostelDetails(hostelId);
      if (hostelResp != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HostelDetailsStudentAppScreen(
              userId: userId,
              hostelResp: hostelResp,
            ),
          ),
        );
      } else {
        _showError("Hostel details not found.");
      }
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavigationBarStudentWidget(),
        ),
      );
    }
  }

  void _handleDeepLink(Uri uri) {
    // Example: Extract hostelId from the deep link
    final hostelId = uri.queryParameters['hostelId'];
    if (hostelId != null) {
      // Fetch hostel details from Firestore using hostelId
      fetchHostelDetails(hostelId).then((hostelResp) {
        if (hostelResp != null) {
          // Navigate to the hostel details screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HostelDetailsStudentAppScreen(
                userId: FirebaseAuth.instance.currentUser?.uid ?? '',
                hostelResp: hostelResp,
              ),
            ),
          );
        }
      }).catchError((error) {
        // Handle errors (e.g., show a snackbar or log the error)
        _showError("Error fetching hostel details: $error");
      });
    }
  }

  void _showError(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Error", style: TextStyle(color: Colors.white)),
          content: Text(message, style: TextStyle(color: Colors.white)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK", style: TextStyle(color: Colors.purple)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // You can add a logo here if needed
            // Image.asset('assets/logo.png', height: 100, width: 100),
            const SizedBox(height: 20),
            const CircularProgressIndicator(color: Colors.purple), // Purple loading indicator for dark theme
            const SizedBox(height: 20),
            const Text(
              "Checking login status...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white), // White text
            ),
          ],
        ),
      ),
    );
  }
}