part of 'common_hostel_process_bloc.dart';

@freezed
class CommonHostelProcessEvent with _$CommonHostelProcessEvent {
  const factory CommonHostelProcessEvent.submitReviewButtonPressed({
    required String stars,
    required String userId,
    required String userName,
    required String comment,
    required String hostelId,
  }) = _submitReviewButtonPressed;
  

  const factory CommonHostelProcessEvent.getAllratingsAndReview({
    required String hostelId,
  }) = _getAllratingsAndReview;
  
}