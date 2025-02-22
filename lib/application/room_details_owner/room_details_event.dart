part of 'room_details_bloc.dart';

@freezed
class RoomDetailsEvent with _$RoomDetailsEvent {
  const factory RoomDetailsEvent.addRoomsToFirestore({
    required Map<String, dynamic> rooms,
    required String hostelId,
  }) = _addRoomsToFirestore;

  const factory RoomDetailsEvent.getHostelRoomDetailsById({
    required String hostelId,
  }) = _getHostelRoomDetailsById;

  const factory RoomDetailsEvent.bookNowButtonPressed({
     required String userId,
     required String hostelName,
   required String hostelOwnerUserId,
  required String hostelId,
  required List<Map<String, dynamic>> selectedRooms,
  required String userName,
  required String userPhone,
  }) = _bookNowButtonPressed;

  const factory RoomDetailsEvent.loadBookingHistoryForStudent({required String userId,}) = _loadBookingHistoryForStudent;

  const factory RoomDetailsEvent.cancelBookingEvent({required String bookingId}) = _CancelBookingEvent;
  
  
}
