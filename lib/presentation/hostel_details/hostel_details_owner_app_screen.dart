import 'package:flutter/material.dart';

class HostelDetailsOwnerAppScreen extends StatelessWidget {
  const HostelDetailsOwnerAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hostel Details"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
            onPressed: () {
              // Handle chat icon press
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1E1E2C), Color(0xFF121212)], // Dark gradient
          ),
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            // Horizontal Image Scroller
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace with actual image count
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage('https://img.freepik.com/free-photo/young-friends-hostel_52683-121730.jpg'), // Replace with actual image paths
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Hostel Details
            const Text(
              "Hostel Details",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Location: 123 Main Street, City Name",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const Text(
              "Rooms Available: 20",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const Text(
              "Facilities: Wi-Fi, Gym, Laundry, Parking",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle edit details
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Edit Details"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle see all reviews
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("See All Reviews"),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Additional Info Section
            const Text(
              "Additional Information",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Nearby Places: Grocery Store, Park, Shopping Mall",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const Text(
              "Monthly Rent: \$500 per room",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle chat
        },
        backgroundColor: Colors.pink,
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}
