part of 'room_details_bloc.dart';

@freezed
class RoomDetailsEvent with _$RoomDetailsEvent {
  const factory RoomDetailsEvent.addRoomsToFirestore({
    required List<Map<String, String>> rooms,
    required String hostelId,
  }) = _addRoomsToFirestore;
}
