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
      await event.map(
        addRoomsToFirestore: (value) async {
          emit(state.copyWith(
            isSubmitting: true,
            successOrFailureOption: none(),
            fetchSuccessOrFailureOption: none(),
          ));
          final resp = await ihostelFacade.addRoomsToFirestore(
              roomData: value.rooms, hostelId: value.hostelId);

          resp.fold((f) {
            emit(state.copyWith(
              isSubmitting: false,
              fetchSuccessOrFailureOption: none(),
              successOrFailureOption: some(left(f)),
            ));
          }, (s) {
            emit(state.copyWith(
              isSubmitting: false,
              fetchSuccessOrFailureOption: none(),
              successOrFailureOption: some(right(s)),
            ));
          });
        },
        getHostelRoomDetailsById: (_getHostelRoomDetailsById value) async {
          emit(state.copyWith(
            isSubmitting: true,
            successOrFailureOption: none(),
            fetchSuccessOrFailureOption: none(),
          ));
          final resp = await ihostelFacade.getRoomsFromFirestore(
              hostelId: value.hostelId);

          resp.fold((f) {
            emit(state.copyWith(
              isSubmitting: false,
              fetchSuccessOrFailureOption: some(left(f)),
              successOrFailureOption: none(),
            ));
          }, (s) {
            emit(state.copyWith(
              isSubmitting: false,
              fetchSuccessOrFailureOption: some(right(s)),
              successOrFailureOption: none(),
            ));
          });
        },
        bookNowButtonPressed: (_bookNowButtonPressed value) async {
          emit(state.copyWith(
            isSubmitting: true,
            successOrFailureOption: none(),
            fetchSuccessOrFailureOption: none(),
          ));
          final resp = await ihostelFacade.bookRoomsInFirestore(
            hostelId: value.hostelId,
            hostelName: value.hostelName,
            hostelOwnerUserId: value.hostelOwnerUserId,
            selectedRooms: value.selectedRooms,
            userId: value.userId,
            userName: value.userName,
            userPhone: value.userPhone,
          );

          resp.fold((f) {
            emit(state.copyWith(
              isSubmitting: false,
              fetchSuccessOrFailureOption: none(),
              successOrFailureOption: some(left(f)),
            ));
          }, (s) {
            emit(state.copyWith(
              isSubmitting: false,
              fetchSuccessOrFailureOption: none(),
              successOrFailureOption: some(right(s)),
            ));
          });
        },
        // loadBookingHistoryForStudent: (_loadBookingHistoryForStudent value) async{
        //    emit(state.copyWith(
        //     isSubmitting: true,
        //     successOrFailureOption: none(),
        //     fetchSuccessOrFailureOption: none(),
        //   ));
        //   final resp = await ihostelFacade.getBookingsFromFirestore(studentUserId: value.userId);

        //   resp.fold((f) {
        //     emit(state.copyWith(
        //       isSubmitting: false,
        //       fetchSuccessOrFailureOption: some(left(f)),
        //       successOrFailureOption:none(),
        //     ));
        //   }, (s) {
        //     emit(state.copyWith(
        //       isSubmitting: false,
        //       fetchSuccessOrFailureOption:some(right(s)),
        //       successOrFailureOption: none(),
        //     ));
        //   });
        //  },
        // cancelBookingEvent: (_CancelBookingEvent value) async {
        //   emit(state.copyWith(
        //     isSubmitting: true,
        //     processingBookingId: value.bookingId,
        //     successOrFailureOption: none(),
        //     // fetchSuccessOrFailureOption: none(),
        //   ));
        //   final resp =
        //       await ihostelFacade.cancelBooking(bookingId: value.bookingId);

        //   resp.fold((f) {
        //     emit(state.copyWith(
        //       isSubmitting: false,
        //       // fetchSuccessOrFailureOption:none(),
        //       successOrFailureOption: some(left(f)),
        //     ));
        //   }, (s) {
        //     emit(state.copyWith(
        //       isSubmitting: false,
        //       // fetchSuccessOrFailureOption:none(),
        //       successOrFailureOption: some(right(s)),
        //     ));
        //   });
        // },
        // loadBookingHistoryForOnwer: (_loadBookingHistoryForOwner value) async {
        //   emit(state.copyWith(
        //     isSubmitting: true,
        //     successOrFailureOption: none(),
        //     fetchSuccessOrFailureOption: none(),
        //   ));
        //   final resp = await ihostelFacade.getBookingsFromFirestore(
        //       hostelOwnerUserId: value.userId);

        //   resp.fold((f) {
        //     emit(state.copyWith(
        //       isSubmitting: false,
        //       fetchSuccessOrFailureOption: some(left(f)),
        //       successOrFailureOption: none(),
        //     ));
        //   }, (s) {
        //     emit(state.copyWith(
        //       isSubmitting: false,
        //       fetchSuccessOrFailureOption: some(right(s)),
        //       successOrFailureOption: none(),
        //     ));
        //   });
        // },
      );
    });
  }
}
