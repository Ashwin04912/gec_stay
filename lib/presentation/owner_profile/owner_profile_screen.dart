import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class OwnerProfileScreen extends StatelessWidget {
  const OwnerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue.shade100, Colors.white],
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: 270,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const OwnerInfoCard(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1639628735078-ed2f038a193e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Contact Information",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const ListTile(
                    leading: Icon(Icons.phone, color: Colors.black),
                    title: Text(
                      "+1-123-456-7890",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email, color: Colors.black),
                    title: Text(
                      "owner@example.com",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Hostels Managed",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
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
                        const Divider(color: Colors.black26),
                    itemCount: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Add your logout functionality here
                        },
                        icon: const Icon(Icons.logout,
                            color:
                                Colors.black), // Logout icon with black color
                        label: const Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors
                                  .black), // Text color matching the theme
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black, backgroundColor: Colors.white, // Text color
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                          side: BorderSide(
                              color: Colors.black
                                  .withOpacity(0.3)), // Border color
                        ),
                      )
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
      height: 200,
      borderRadius: 10,
      blur: 17,
      border: 0,
      alignment: Alignment.center,
      borderGradient: LinearGradient(
        colors: [Colors.white.withAlpha(45), Colors.white.withAlpha(45)],
      ),
      linearGradient: LinearGradient(
        colors: [Colors.white.withAlpha(45), Colors.white.withAlpha(45)],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "John Doe",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.black),
            SizedBox(height: 10),
            Text(
              "Managing Hostels Since 2015",
              style: TextStyle(
                color: Colors.black54,
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
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        location,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 14,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black54),
    );
  }
}
