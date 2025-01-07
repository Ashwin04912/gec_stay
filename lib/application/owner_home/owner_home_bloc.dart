import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_home_event.dart';
part 'owner_home_state.dart';
part 'owner_home_bloc.freezed.dart';

class OwnerHomeBloc extends Bloc<OwnerHomeEvent, OwnerHomeState> {
  OwnerHomeBloc() : super(OwnerHomeState.initial()) {
    on<OwnerHomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
