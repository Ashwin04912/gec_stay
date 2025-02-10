part of 'common_hostel_process_bloc.dart';

@freezed
class CommonHostelProcessEvent with _$CommonHostelProcessEvent {
  const factory CommonHostelProcessEvent.submitReviewButtonPressed({
    required String stars,
    required String userId,
    required String hostelOwnerUserId,
    required String userName,
    required String comment,
    required String hostelId,
  }) = _submitReviewButtonPressed;
  

  const factory CommonHostelProcessEvent.getAllratingsAndReview({
    required String hostelId,
  }) = _getAllratingsAndReview;

  const factory CommonHostelProcessEvent.deleteButtonPressed({required String hostelId, required String hostelOwnerUserId}) = _deleteButtonPressed;

  const factory CommonHostelProcessEvent.findLocationButtonPressed() =
      _findLocationButtonPressed;

      const factory CommonHostelProcessEvent.getHostelById({required String hostelId}) = _getHostelById;
      

  const factory CommonHostelProcessEvent.submitButtonPressed({
    required HostelResponseModel hostelData,
    required List<XFile> hostelImages,
  }) = _submitButtonPressed;
  

    const factory CommonHostelProcessEvent.getOwnersHostelList({required String userId}) = _getOwnersHostelList;
  const factory CommonHostelProcessEvent.getAllHostelList() = _getAllHostelList;
  const factory CommonHostelProcessEvent.getAdminHostelList({required String approvalType}) = _getAdminHostelList;
  
}