import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gecw_lakx/application/room_details_owner/room_details_bloc.dart';
import 'package:gecw_lakx/presentation/auth/sign_in_screen.dart';
import 'package:gecw_lakx/presentation/cart/cart_screen.dart';
import 'package:gecw_lakx/presentation/student_home/student_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../student_profile/student_profile_screen.dart';

class BottomNavigationBarStudentWidget extends StatefulWidget {
  const BottomNavigationBarStudentWidget({super.key});

  @override
  BottomNavigationBarStudentWidgetState createState() =>
      BottomNavigationBarStudentWidgetState();
}

class BottomNavigationBarStudentWidgetState
    extends State<BottomNavigationBarStudentWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    StudentHomeScreen(), // Home screen
    Scaffold(
      body: Center(
          child: Text(
        "probability checkout Screen",
        style: TextStyle(color: Colors.white),
      )), // Notifications screen placeholder
    ),
    CartScreen(),
  ];

  void _onNavBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1F1F1F), Color(0xFF3C3C3C)], // Dark gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: SizedBox(
            height: 80, // Adjusted height for better spacing
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Home",
                  icon: Icons.home,
                  isSelected: _selectedIndex == 0,
                  onPressed: () => _onNavBarItemTapped(0),
                ),
                // NavBarIcon(
                //   text: "Create",
                //   icon: Icons.create,
                //   isSelected: _selectedIndex == 1,
                //   onPressed: () => _onNavBarItemTapped(1),
                // ),
                NavBarIcon(
                  text: "Probability checker",
                  icon: Icons.sync_problem_sharp,
                  isSelected: _selectedIndex == 1,
                  onPressed: () => _onNavBarItemTapped(1),
                ),
                NavBarIcon(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  isSelected: _selectedIndex == 2,
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    final String? userId = prefs.getString('owner_userid');
                    if (userId != null) {
                      context.read<RoomDetailsBloc>().add(
                          RoomDetailsEvent.loadBookingHistoryForStudent(
                              userId: userId));
                      _onNavBarItemTapped(2);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text("Some error occured..try again later")));
                    }
                  },
                ),
                NavBarIcon(
                  text: "Log Out",
                  icon: Icons.logout,
                  isSelected: _selectedIndex == 3,
                  onPressed: () async {
                    bool confirmSignOut = await showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Confirm Sign Out"),
                        content:
                            const Text("Are you sure you want to log out?"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(false), // No
                            child: const Text("No"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(true), // Yes
                            child: const Text("Yes"),
                          ),
                        ],
                      ),
                    );

                    if (confirmSignOut == true) {
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (ctx) => SignInScreen()),
                        (route) => false,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final bool isSelected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: isSelected ? Colors.pinkAccent : Colors.transparent,
              shape: BoxShape.circle,
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: Colors.pinkAccent.withOpacity(0.6),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ]
                  : [],
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              size: 28,
              color: isSelected ? Colors.white : Colors.grey,
            ),
          ),
          // const SizedBox(height: 4),
          // Text(
          //   text,
          //   style: TextStyle(
          //     fontSize: 12,
          //     fontWeight: FontWeight.w500,
          //     color: isSelected ? Colors.pinkAccent : Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
