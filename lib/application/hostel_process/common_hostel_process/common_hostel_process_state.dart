part of 'common_hostel_process_bloc.dart';

@freezed
class CommonHostelProcessState with _$CommonHostelProcessState {
  factory CommonHostelProcessState({
    required bool isSubmitting,
    required Option<Either<FormFailures, Unit>> successOrFailure,
    required Option<Either<FormFailures, List<Map<String, String>>>>
        getAllRatingsSuccessOrFailure,
    required List<Map<String, String>> respList,
    required Position location,
    required bool showErrorMessages,
    required Option<Either<FormFailures, Unit>> submitFailureOrSuccessOption,
    required Option<Either<LocationFetchFailures, Position>> locationOption,
    required HostelResponseModel hostelDataById,
    // required bool isSubmitting,
    required bool locationFetched,
  }) = _CommonHostelProcessState;

  factory CommonHostelProcessState.initial() => CommonHostelProcessState(
        isSubmitting: false,
        successOrFailure: none(),
        getAllRatingsSuccessOrFailure: none(),
        respList: [],
        hostelDataById: HostelResponseModel(
            description: '',
            hostelName: '',
            location: Location(latitude: 0, longitude: 0),
            hostelId: '',
            ownerName: '',
            distFromCollege: '',
            isMessAvailable: '',
            isMensHostel: '',
            phoneNumber: '',
            rent: '',
            rooms: '',
            vacancy: '',
            hostelImages: [],
            hostelOwnerUserId: '',
            rating: ''),


        submitFailureOrSuccessOption: none(),
        locationOption: none(),
        locationFetched: false,
        showErrorMessages: false,
        location: Position(
          latitude: 0.0,
          longitude: 0.0,
          timestamp: DateTime.now(),
          accuracy: 0.0,
          altitude: 0.0,
          altitudeAccuracy: 0.0,
          heading: 0.0,
          headingAccuracy: 0.0,
          speed: 0.0,
          speedAccuracy: 0.0,
        ),
      );
}
