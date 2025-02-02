import 'package:flutter/material.dart';
import 'package:gecw_lakx/presentation/student_home/student_home_screen.dart';
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
    // Scaffold(
    //   body:
    //       Center(child: Text("Edit Screen")), // Settings screen placeholder
    // ),
    Scaffold(
      body: Center(
          child:
              Text("Notifications Screen")), // Notifications screen placeholder
    ),
    StudentProfileScreen(),
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
                  text: "Notifications",
                  icon: Icons.notifications,
                  isSelected: _selectedIndex == 1,
                  onPressed: () => _onNavBarItemTapped(1),
                ),
                NavBarIcon(
                  text: "Profile",
                  icon: Icons.person,
                  isSelected: _selectedIndex == 2,
                  onPressed: () => _onNavBarItemTapped(2),
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
