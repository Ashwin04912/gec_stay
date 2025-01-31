import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gecw_lakx/domain/core/formfailures.dart';
import 'package:gecw_lakx/domain/hostel_process/i_hostel_process_facade.dart';
import 'package:injectable/injectable.dart';

part 'common_hostel_process_event.dart';
part 'common_hostel_process_state.dart';
part 'common_hostel_process_bloc.freezed.dart';

@injectable
class CommonHostelProcessBloc
    extends Bloc<CommonHostelProcessEvent, CommonHostelProcessState> {
  final IHostelProcessFacade ihostelFacade;
  CommonHostelProcessBloc(this.ihostelFacade)
      : super(CommonHostelProcessState.initial()) {
    on<CommonHostelProcessEvent>((event, emit) async {
      await event.map(submitReviewButtonPressed: (value) async {
        emit(state.copyWith(
          isSubmitting: true,
          successOrFailure: none(),
          // getAllRatingsSuccessOrFailure: none()
        ));
        final resp = await ihostelFacade.rateTheHostel(
          hostelId: value.hostelId,
          star: value.stars,
          comment: value.comment,
          userId: value.userId,
          userName: value.userName, hostelOwnerUserId: value.hostelOwnerUserId,
        );
        // await ihostelFacade.ratingCalculation(hostelId: value.hostelId, rating: double.parse(value.stars));
        resp.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrFailure: some(left(f)),
            // getAllRatingsSuccessOrFailure: none()
          ));
        }, (s) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrFailure: some(right(s)),
            // getAllRatingsSuccessOrFailure: none()
          ));
        });
      }, getAllratingsAndReview: (_getAllratingsAndReview value) async {
        emit(state.copyWith(isSubmitting: true, successOrFailure: none()));
        final resp = await ihostelFacade.getAllratingsAndReview(
          hostelId: value.hostelId,
        );
        resp.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            getAllRatingsSuccessOrFailure: some(left(f))
          ));
        }, (s) {
          emit(state.copyWith(
            isSubmitting: false,
            respList: s,
            getAllRatingsSuccessOrFailure: some(right(s))
          ));
        });
      });
    });
  }
}
