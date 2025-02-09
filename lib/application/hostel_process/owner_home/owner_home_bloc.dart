// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:gecw_lakx/domain/core/formfailures.dart';
// import 'package:gecw_lakx/domain/hostel_process/hostel_resp_model.dart';
// import 'package:gecw_lakx/domain/hostel_process/i_hostel_process_facade.dart';
// import 'package:injectable/injectable.dart';

// part 'owner_home_event.dart';
// part 'owner_home_state.dart';
// part 'owner_home_bloc.freezed.dart';

// @injectable
// class OwnerHomeBloc extends Bloc<OwnerHomeEvent, OwnerHomeState> {
//   final IHostelProcessFacade iHostelFacade;
//   OwnerHomeBloc(this.iHostelFacade) : super(OwnerHomeState.initial()) {
//     on<OwnerHomeEvent>((event, emit) async {
//       await event.map(
//         getOwnersHostelList: (_getOwnersHostelList value) async {
//           emit(state.copyWith(
//             isSubmitting: true,
//             hostelGetFailureOrSuccess: none(),
//           ));
//           print("bloc userId is ${value.userId}");
//           final resp =
//               await iHostelFacade.getOwnerHostelList(userId: value.userId);

//           resp.fold((f) {
//             emit(state.copyWith(
//               isSubmitting: false,
//               hostelGetFailureOrSuccess: some(left(f)),
//             ));
//           }, (s) {
//             emit(state.copyWith(
//               isSubmitting: false,
//               hostelGetFailureOrSuccess: some(right(s)),
//             ));
//           });
//         },
//         getAllHostelList: (_getAllHostelList value) async {
//           emit(state.copyWith(
//             isSubmitting: true,
//             hostelGetFailureOrSuccess: none(),
//           ));
//           final resp = await iHostelFacade.getAllHostelList();

//           resp.fold((f) {
//             emit(state.copyWith(
//               isSubmitting: false,
//               hostelGetFailureOrSuccess: some(left(f)),
//             ));
//           }, (s) {
//             emit(state.copyWith(
//               isSubmitting: false,
//               hostelGetFailureOrSuccess: some(right(s)),
//             ));
//           });
//         },
//       );
//     });
//   }
// }
