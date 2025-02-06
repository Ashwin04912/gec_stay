import 'package:flutter/material.dart';

class NewHostelsScreen extends StatelessWidget {
  NewHostelsScreen({super.key});

  // Sample hostel data
  final List<Map<String, String>> hostels = [
    {"name": "Hostel A", "location": "City Center", "id": "1"},
    {"name": "Hostel B", "location": "Downtown", "id": "2"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("New Hostels"),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: hostels.length,
          itemBuilder: (context, index) {
            final hostel = hostels[index];
            return HostelCard(
              name: hostel["name"]!,
              location: hostel["location"]!,
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HostelDetailScreen(hostelId: hostel["id"]!)),
                // );
              },
            );
          },
        ),
      ),
    );
  }
}

class HostelCard extends StatelessWidget {
  final String name;
  final String location;
  final VoidCallback onTap;

  const HostelCard({
    super.key,
    required this.name,
    required this.location,
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
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Icon(Icons.apartment, color: Colors.deepPurpleAccent, size: 32),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "📍 $location",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
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
