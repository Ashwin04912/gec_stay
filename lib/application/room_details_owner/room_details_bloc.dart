import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gecw_lakx/domain/core/formfailures.dart';
import 'package:gecw_lakx/domain/hostel_process/i_hostel_process_facade.dart';
import 'package:injectable/injectable.dart';

part 'room_details_event.dart';
part 'room_details_state.dart';
part 'room_details_bloc.freezed.dart';

@injectable
class RoomDetailsBloc extends Bloc<RoomDetailsEvent, RoomDetailsState> {
  final IHostelProcessFacade ihostelFacade;
  RoomDetailsBloc(this.ihostelFacade) : super(RoomDetailsState.initial()) {
    on<RoomDetailsEvent>((event, emit) async {
      await event.map(addRoomsToFirestore: (value) async {
        emit(state.copyWith(
            isSubmitting: false, successOrFailureOption: none()));
        final resp =
            await ihostelFacade.addRoomsToFirestore(rooms: value.rooms,hostelId: value.hostelId);

        resp.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrFailureOption: some(left(f)),
          ));
        }, (s) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrFailureOption: some(right(s)),
          ));
        });
      });
    });
  }
}
