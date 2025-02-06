import 'package:flutter/material.dart';
import 'package:gecw_lakx/presentation/admin_app/new_hostel_screen/new_hostel_screen.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Admin Dashboard",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AdminOptionCard(
              title: "New Hostels",
              icon: Icons.pending_actions,
              onTap: () {
                // Navigate to NewHostelsScreen
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>NewHostelsScreen()));
                
              },
            ),
            const SizedBox(height: 16),
            AdminOptionCard(
              title: "Approved Hostels",
              icon: Icons.check_circle,
              onTap: () {
                // Navigate to ApprovedHostelsScreen
              },
            ),
            const SizedBox(height: 16),
            AdminOptionCard(
              title: "Denied Hostels",
              icon: Icons.cancel,
              onTap: () {
                // Navigate to DeniedHostelsScreen
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AdminOptionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const AdminOptionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Card(
        color: Colors.grey[900],
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Row(
            children: [
              Icon(icon, color: Colors.deepPurpleAccent, size: 30),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
