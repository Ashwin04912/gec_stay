part of 'owner_home_bloc.dart';

@freezed
class OwnerHomeState with _$OwnerHomeState {
  factory OwnerHomeState({required bool isSubmitting}) = _OwnerHomeState;

  factory OwnerHomeState.initial() => OwnerHomeState(
        isSubmitting: false,
      );
}
