import 'package:flutter/material.dart';

class RoomSelectionScreen extends StatefulWidget {
  final List<Map<String, dynamic>> rooms;

  const RoomSelectionScreen({super.key, required this.rooms});

  @override
  _RoomSelectionScreenState createState() => _RoomSelectionScreenState();
}

class _RoomSelectionScreenState extends State<RoomSelectionScreen> {
  late List<Map<String, dynamic>> rooms;

  @override
  void initState() {
    super.initState();
    // Ensure a deep copy of the room data to avoid modifying the original list
    rooms = widget.rooms.map((room) {
      return {
        ...room, // Copy existing room data
        'selectedBeds': List.generate(room['beds'], (index) => false), // Initialize selection list
      };
    }).toList();
  }

  void toggleBedSelection(int roomIndex, int bedIndex) {
    setState(() {
      if (bedIndex < rooms[roomIndex]['vacancy']) {
        rooms[roomIndex]['selectedBeds'][bedIndex] = !rooms[roomIndex]['selectedBeds'][bedIndex];
      }
    });
  }

  void confirmSelection() {
    for (var room in rooms) {
      int selectedCount = room['selectedBeds'].where((selected) => selected == true).length;
      if (selectedCount > 0) {
        debugPrint("Room ${room['roomNumber']}: $selectedCount beds selected");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Select Beds"),
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: rooms.length,
              itemBuilder: (context, roomIndex) {
                return Card(
                  color: Colors.grey[850],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Room: ${rooms[roomIndex]['roomNumber']}",
                          style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          spacing: 10,
                          children: List.generate(rooms[roomIndex]['beds'], (bedIndex) {
                            bool isAvailable = bedIndex < rooms[roomIndex]['vacancy'];
                            return GestureDetector(
                              onTap: isAvailable ? () => toggleBedSelection(roomIndex, bedIndex) : null,
                              child: Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: rooms[roomIndex]['selectedBeds'][bedIndex]
                                      ? Colors.blueAccent
                                      : (isAvailable ? Colors.grey[700] : Colors.red[900]),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.white, width: 1),
                                ),
                                child: Text(
                                  "${bedIndex + 1}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: confirmSelection,
            // Implement booking functionality here
           
          child: const Text(
            "Confirm Selection",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
            ),
          ),
        ],
      ),
    );
  }
}
