import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gecw_lakx/domain/core/formfailures.dart';
import 'package:gecw_lakx/domain/hostel_process/hostel_resp_model.dart';
import 'package:gecw_lakx/domain/hostel_process/i_hostel_process_facade.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

import '../../../domain/core/location_fetch_failures.dart';

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
      await event.map(findLocationButtonPressed: (value) async {
        emit(state.copyWith(isSubmitting: true, locationOption: none(),submitFailureOrSuccessOption: none(),));

        final location = await ihostelFacade.getCurrentLocation();

        location.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            // successOrFailure: none(),
            showErrorMessages: true,
            locationOption: some(left(f)),
            submitFailureOrSuccessOption: none(),
          ));
        }, (s) {
          emit(state.copyWith(
            // successOrFailure: none(),
              locationFetched: true,
              location: s,
              isSubmitting: false,
              submitFailureOrSuccessOption: none(),
              locationOption: some(right(s))));
        });
      }, submitButtonPressed: (value) async {
        emit(state.copyWith(
          successOrFailure: none(),
          isSubmitting: true,
          submitFailureOrSuccessOption: none(),
        ));

        // print(
        //     "in bloc call : ${value.distFromCollege} and ${value.isMessAvailable} hostelid = ${value.hostelId}");
        // print("true is working in bloc ${value.hostelId}");
        final resp = await ihostelFacade.saveDataToDb(
            isEdit: value.isEdit,
            hostelName: value.hostelName,
            ownerName: value.ownerName,
            phoneNumber: value.phoneNumber,
            rent: value.rent,
            rooms: value.rooms,
            location: value.location,
            // personsPerRoom: value.personsPerRoom,
            vacancy: value.vacancy,
            description: value.description,
            distFromCollege: value.distFromCollege,
            isMessAvailable: value.isMessAvailable,
            isMensHostel: value.isMensHostel,
            hostelImages: value.hostelImages,
            hostelIdForEdit: value.hostelId);

        resp.fold((f) {
          emit(state.copyWith(
            successOrFailure: none(),
              showErrorMessages: true,
              isSubmitting: false,
              submitFailureOrSuccessOption: some(left(f))));
        }, (s) {
          emit(state.copyWith(
            successOrFailure: none(),
              isSubmitting: false,
              submitFailureOrSuccessOption: some(right(s))));
        });
      }, submitReviewButtonPressed: (value) async {
        emit(state.copyWith(
          submitFailureOrSuccessOption: none(),
          isSubmitting: true,
          successOrFailure: none(),
          // getAllRatingsSuccessOrFailure: none()
        ));
        final resp = await ihostelFacade.rateTheHostel(
          hostelId: value.hostelId,
          star: value.stars,
          comment: value.comment,
          userId: value.userId,
          userName: value.userName,
          hostelOwnerUserId: value.hostelOwnerUserId,
        );
        // await ihostelFacade.ratingCalculation(hostelId: value.hostelId, rating: double.parse(value.stars));
        resp.fold((f) {
          emit(state.copyWith(
            submitFailureOrSuccessOption: none(),
            isSubmitting: false,
            successOrFailure: some(left(f)),
            // getAllRatingsSuccessOrFailure: none()
          ));
        }, (s) {
          emit(state.copyWith(
            submitFailureOrSuccessOption: none(),
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
            successOrFailure: none(),
            submitFailureOrSuccessOption: none(),

              isSubmitting: false,
              getAllRatingsSuccessOrFailure: some(left(f))));
        }, (s) {
          emit(state.copyWith(
              isSubmitting: false,
              successOrFailure: none(),
              submitFailureOrSuccessOption: none(),
              respList: s,
              getAllRatingsSuccessOrFailure: some(right(s))));
        });
      }, deleteButtonPressed: (_deleteButtonPressed value) async {
        emit(state.copyWith(
          isSubmitting: true,
          successOrFailure: none(),
          submitFailureOrSuccessOption: none(),
          getAllRatingsSuccessOrFailure: none()
        ));

        final resp = await ihostelFacade.deleteHostel(
            hostelId: value.hostelId,
            hostelOwnerUserId: value.hostelOwnerUserId);

        resp.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrFailure: some(left(FormFailures.serverError())),
          ));
        }, (s) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrFailure: some(right(s)),
          ));
        });
      }, getHostelById: (_getHostelById value) async {
        emit(state.copyWith(
          isSubmitting: true,
          successOrFailure: None(),
          submitFailureOrSuccessOption: none()
        ));
        final hostelData =
            await ihostelFacade.getHostelById(hostelId: value.hostelId);

        hostelData.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrFailure: some(left(f)),
            // hostelDataById: HostelResponseModel(
            //     description: '',
            //     hostelName: '',
            //     location: Location(latitude: 0, longitude: 0),
            //     hostelId: '',
            //     ownerName: '',
            //     distFromCollege: '',
            //     isMessAvailable: '',
            //     isMensHostel: '',
            //     phoneNumber: '',
            //     rent: '',
            //     rooms: '',
            //     vacancy: '',
            //     hostelImages: [],
            //     hostelOwnerUserId: '',
            //     rating: ''),
          ));
        }, (s) {
          emit(state.copyWith(
              isSubmitting: false,
              successOrFailure: some(right(unit)),
              submitFailureOrSuccessOption: none(),
              getAllRatingsSuccessOrFailure: none(),
              hostelDataById: s));
        });
      });
    });
  }
}
