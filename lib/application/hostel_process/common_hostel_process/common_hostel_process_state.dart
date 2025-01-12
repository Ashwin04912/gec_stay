part of 'common_hostel_process_bloc.dart';

@freezed
class CommonHostelProcessState with _$CommonHostelProcessState {
  factory CommonHostelProcessState({
    required bool isSubmitting,
    required Option<Either<FormFailures, Unit>> successOrFailure,
    required Option<Either<FormFailures,List<Map<String, String>>>> getAllRatingsSuccessOrFailure,
    required List<Map<String, String>> respList,
  }) = _CommonHostelProcessState;

  factory CommonHostelProcessState.initial() => CommonHostelProcessState(
        isSubmitting: false,
        successOrFailure: none(),
        getAllRatingsSuccessOrFailure: none(),
        respList: []
      );
      
}
