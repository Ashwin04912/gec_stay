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
}
