import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gecw_lakx/presentation/auth/sign_in_screen.dart';
import 'package:glassmorphism/glassmorphism.dart';

class OwnerProfileScreen extends StatelessWidget {
  const OwnerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1E1E2C), Color(0xFF121212)], // Dark gradient
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 30),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const OwnerInfoCard(),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: "Contact Information"),
                  const ListTile(
                    leading: Icon(Icons.phone, color: Colors.white70),
                    title: Text(
                      "+1-123-456-7890",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email, color: Colors.white70),
                    title: Text(
                      "owner@example.com",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SectionTitle(title: "Hostels Managed"),
                  const SizedBox(height: 10),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, i) {
                      return HostelTile(
                        hostelName: "Hostel ${i + 1}",
                        location: "Location ${i + 1}",
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (ctx, i) =>
                        Divider(color: Colors.white.withOpacity(0.2)),
                    itemCount: 2,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()),
                              (route) => false);
                        },
                        icon: const Icon(Icons.logout,
                            color: Colors.redAccent), // Logout icon
                        label: const Text(
                          "Logout",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // Transparent
                          foregroundColor: Colors.redAccent,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                                color: Colors.redAccent.withOpacity(0.5)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OwnerInfoCard extends StatelessWidget {
  const OwnerInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: double.maxFinite,
      height: 150,
      borderRadius: 10,
      blur: 20,
      border: 0,
      alignment: Alignment.center,
      borderGradient: LinearGradient(
        colors: [Colors.white.withAlpha(30), Colors.white.withAlpha(30)],
      ),
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.black.withOpacity(0.2), Colors.black.withOpacity(0.1)],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "John Doe",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.white70),
            SizedBox(height: 10),
            Text(
              "Managing Hostels Since 2015",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HostelTile extends StatelessWidget {
  final String hostelName;
  final String location;
  final VoidCallback onTap;

  const HostelTile({
    Key? key,
    required this.hostelName,
    required this.location,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      dense: true,
      title: Text(
        hostelName,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        location,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white70),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
