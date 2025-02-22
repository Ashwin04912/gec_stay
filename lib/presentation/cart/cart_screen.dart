import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gecw_lakx/application/room_details_owner/room_details_bloc.dart';
import 'package:gecw_lakx/domain/core/formfailures.dart';
import 'package:gecw_lakx/presentation/bottom_navigation/bottom_navigation_student.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String? cancellingBookingId; // Tracks which booking is being canceled
  // List<dynamic> bookings = []; // Holds the list of bookings

  void _showCancelConfirmation(BuildContext context, String bookingId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Cancel Booking"),
          content: const Text("Are you sure you want to cancel this booking?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  cancellingBookingId = bookingId;
                });
                context.read<RoomDetailsBloc>().add(
                      RoomDetailsEvent.cancelBookingEvent(bookingId: bookingId),
                    );
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: BlocConsumer<RoomDetailsBloc, RoomDetailsState>(
        listener: (context, state) {
          if (!state.isSubmitting) {
            setState(() {
              cancellingBookingId = null;
            });
          }

          // Update the booking status when cancellation is successful
          state.successOrFailureOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                // Handle cancellation failure if needed
              },
              (successBookingId) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>BottomNavigationBarStudentWidget()));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Booking Cancelled Successfully..')));
              },
            ),
          );
        },
        builder: (context, state) {
          final fetchOption = state.fetchSuccessOrFailureOption;

          return fetchOption.fold(
            () => const Center(
              child: CircularProgressIndicator(color: Colors.deepPurpleAccent),
            ),
            (either) => either.fold(
              (failure) => Center(
                child: Text(
                  _mapFailureToMessage(failure),
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              (fetchedBookings) {
                // bookings = fetchedBookings;
                return fetchedBookings.isEmpty
                    ? const Center(
                        child: Text(
                          "No bookings found",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView.builder(
                          itemCount: fetchedBookings.length,
                          itemBuilder: (context, index) {
                            final hostel = fetchedBookings[index];
                            final String status = hostel['status'];
                            final String bookingId = hostel['bookingId'];

                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.only(bottom: 14),
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        hostel['hostelName'],
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          if (status == 'booked' && cancellingBookingId == null) {
                                            _showCancelConfirmation(context, bookingId);
                                          }
                                        },
                                        child: cancellingBookingId == bookingId
                                            ? const SizedBox(
                                                width: 24,
                                                height: 24,
                                                child: CircularProgressIndicator(
                                                  color: Colors.deepPurpleAccent,
                                                  strokeWidth: 2,
                                                ),
                                              )
                                            : Text(
                                                status.toUpperCase(),
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: status == 'booked'
                                                      ? Colors.green
                                                      : Colors.red,
                                                ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  const Text(
                                    'Rooms:',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Column(
                                    children: (hostel['rooms'] as List)
                                        .map<Widget>((room) {
                                      return Padding(
                                        padding: const EdgeInsets.only(bottom: 4),
                                        child: Row(
                                          children: [
                                            const Icon(Icons.bed, size: 16, color: Colors.white70),
                                            const SizedBox(width: 6),
                                            Text(
                                              'Room ${room['roomNumber']} - Beds: ${room['selectedBedsCount']}',
                                              style: const TextStyle(fontSize: 14, color: Colors.white70),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 12),
                                ],
                              ),
                            );
                          },
                        ),
                      );
              },
            ),
          );
        },
      ),
    );
  }

  String _mapFailureToMessage(FormFailures failure) {
    return failure.maybeMap(
      serverError: (_) => "Server error, please try again",
      noDataFound: (_) => "No bookings available",
      orElse: () => "Something went wrong",
    );
  }
}
