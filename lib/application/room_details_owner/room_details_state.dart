part of 'room_details_bloc.dart';

@freezed
class RoomDetailsState with _$RoomDetailsState {
  factory RoomDetailsState({
    required bool isSubmitting,
    required Option<Either<FormFailures, Unit>> successOrFailureOption,
  }) = _RoomDetailsState;

  factory RoomDetailsState.initial() => RoomDetailsState(
        isSubmitting: false,
        successOrFailureOption: none(),
      );
}
