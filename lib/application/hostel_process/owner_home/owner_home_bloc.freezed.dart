// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnerHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getOwnersHostelList,
    required TResult Function() getAllHostelList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getOwnersHostelList,
    TResult? Function()? getAllHostelList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getOwnersHostelList,
    TResult Function()? getAllHostelList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOwnersHostelList value) getOwnersHostelList,
    required TResult Function(_getAllHostelList value) getAllHostelList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOwnersHostelList value)? getOwnersHostelList,
    TResult? Function(_getAllHostelList value)? getAllHostelList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOwnersHostelList value)? getOwnersHostelList,
    TResult Function(_getAllHostelList value)? getAllHostelList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerHomeEventCopyWith<$Res> {
  factory $OwnerHomeEventCopyWith(
          OwnerHomeEvent value, $Res Function(OwnerHomeEvent) then) =
      _$OwnerHomeEventCopyWithImpl<$Res, OwnerHomeEvent>;
}

/// @nodoc
class _$OwnerHomeEventCopyWithImpl<$Res, $Val extends OwnerHomeEvent>
    implements $OwnerHomeEventCopyWith<$Res> {
  _$OwnerHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerHomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getOwnersHostelListImplCopyWith<$Res> {
  factory _$$getOwnersHostelListImplCopyWith(_$getOwnersHostelListImpl value,
          $Res Function(_$getOwnersHostelListImpl) then) =
      __$$getOwnersHostelListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$getOwnersHostelListImplCopyWithImpl<$Res>
    extends _$OwnerHomeEventCopyWithImpl<$Res, _$getOwnersHostelListImpl>
    implements _$$getOwnersHostelListImplCopyWith<$Res> {
  __$$getOwnersHostelListImplCopyWithImpl(_$getOwnersHostelListImpl _value,
      $Res Function(_$getOwnersHostelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$getOwnersHostelListImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getOwnersHostelListImpl implements _getOwnersHostelList {
  const _$getOwnersHostelListImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'OwnerHomeEvent.getOwnersHostelList(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getOwnersHostelListImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of OwnerHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getOwnersHostelListImplCopyWith<_$getOwnersHostelListImpl> get copyWith =>
      __$$getOwnersHostelListImplCopyWithImpl<_$getOwnersHostelListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getOwnersHostelList,
    required TResult Function() getAllHostelList,
  }) {
    return getOwnersHostelList(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getOwnersHostelList,
    TResult? Function()? getAllHostelList,
  }) {
    return getOwnersHostelList?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getOwnersHostelList,
    TResult Function()? getAllHostelList,
    required TResult orElse(),
  }) {
    if (getOwnersHostelList != null) {
      return getOwnersHostelList(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOwnersHostelList value) getOwnersHostelList,
    required TResult Function(_getAllHostelList value) getAllHostelList,
  }) {
    return getOwnersHostelList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOwnersHostelList value)? getOwnersHostelList,
    TResult? Function(_getAllHostelList value)? getAllHostelList,
  }) {
    return getOwnersHostelList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOwnersHostelList value)? getOwnersHostelList,
    TResult Function(_getAllHostelList value)? getAllHostelList,
    required TResult orElse(),
  }) {
    if (getOwnersHostelList != null) {
      return getOwnersHostelList(this);
    }
    return orElse();
  }
}

abstract class _getOwnersHostelList implements OwnerHomeEvent {
  const factory _getOwnersHostelList({required final String userId}) =
      _$getOwnersHostelListImpl;

  String get userId;

  /// Create a copy of OwnerHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getOwnersHostelListImplCopyWith<_$getOwnersHostelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getAllHostelListImplCopyWith<$Res> {
  factory _$$getAllHostelListImplCopyWith(_$getAllHostelListImpl value,
          $Res Function(_$getAllHostelListImpl) then) =
      __$$getAllHostelListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getAllHostelListImplCopyWithImpl<$Res>
    extends _$OwnerHomeEventCopyWithImpl<$Res, _$getAllHostelListImpl>
    implements _$$getAllHostelListImplCopyWith<$Res> {
  __$$getAllHostelListImplCopyWithImpl(_$getAllHostelListImpl _value,
      $Res Function(_$getAllHostelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerHomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getAllHostelListImpl implements _getAllHostelList {
  const _$getAllHostelListImpl();

  @override
  String toString() {
    return 'OwnerHomeEvent.getAllHostelList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getAllHostelListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getOwnersHostelList,
    required TResult Function() getAllHostelList,
  }) {
    return getAllHostelList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getOwnersHostelList,
    TResult? Function()? getAllHostelList,
  }) {
    return getAllHostelList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getOwnersHostelList,
    TResult Function()? getAllHostelList,
    required TResult orElse(),
  }) {
    if (getAllHostelList != null) {
      return getAllHostelList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOwnersHostelList value) getOwnersHostelList,
    required TResult Function(_getAllHostelList value) getAllHostelList,
  }) {
    return getAllHostelList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOwnersHostelList value)? getOwnersHostelList,
    TResult? Function(_getAllHostelList value)? getAllHostelList,
  }) {
    return getAllHostelList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOwnersHostelList value)? getOwnersHostelList,
    TResult Function(_getAllHostelList value)? getAllHostelList,
    required TResult orElse(),
  }) {
    if (getAllHostelList != null) {
      return getAllHostelList(this);
    }
    return orElse();
  }
}

abstract class _getAllHostelList implements OwnerHomeEvent {
  const factory _getAllHostelList() = _$getAllHostelListImpl;
}

/// @nodoc
mixin _$OwnerHomeState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<FormFailures, List<HostelResponseModel>>>
      get hostelGetFailureOrSuccess => throw _privateConstructorUsedError;

  /// Create a copy of OwnerHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerHomeStateCopyWith<OwnerHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerHomeStateCopyWith<$Res> {
  factory $OwnerHomeStateCopyWith(
          OwnerHomeState value, $Res Function(OwnerHomeState) then) =
      _$OwnerHomeStateCopyWithImpl<$Res, OwnerHomeState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<FormFailures, List<HostelResponseModel>>>
          hostelGetFailureOrSuccess});
}

/// @nodoc
class _$OwnerHomeStateCopyWithImpl<$Res, $Val extends OwnerHomeState>
    implements $OwnerHomeStateCopyWith<$Res> {
  _$OwnerHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? hostelGetFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hostelGetFailureOrSuccess: null == hostelGetFailureOrSuccess
          ? _value.hostelGetFailureOrSuccess
          : hostelGetFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, List<HostelResponseModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerHomeStateImplCopyWith<$Res>
    implements $OwnerHomeStateCopyWith<$Res> {
  factory _$$OwnerHomeStateImplCopyWith(_$OwnerHomeStateImpl value,
          $Res Function(_$OwnerHomeStateImpl) then) =
      __$$OwnerHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<FormFailures, List<HostelResponseModel>>>
          hostelGetFailureOrSuccess});
}

/// @nodoc
class __$$OwnerHomeStateImplCopyWithImpl<$Res>
    extends _$OwnerHomeStateCopyWithImpl<$Res, _$OwnerHomeStateImpl>
    implements _$$OwnerHomeStateImplCopyWith<$Res> {
  __$$OwnerHomeStateImplCopyWithImpl(
      _$OwnerHomeStateImpl _value, $Res Function(_$OwnerHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? hostelGetFailureOrSuccess = null,
  }) {
    return _then(_$OwnerHomeStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hostelGetFailureOrSuccess: null == hostelGetFailureOrSuccess
          ? _value.hostelGetFailureOrSuccess
          : hostelGetFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, List<HostelResponseModel>>>,
    ));
  }
}

/// @nodoc

class _$OwnerHomeStateImpl implements _OwnerHomeState {
  _$OwnerHomeStateImpl(
      {required this.isSubmitting, required this.hostelGetFailureOrSuccess});

  @override
  final bool isSubmitting;
  @override
  final Option<Either<FormFailures, List<HostelResponseModel>>>
      hostelGetFailureOrSuccess;

  @override
  String toString() {
    return 'OwnerHomeState(isSubmitting: $isSubmitting, hostelGetFailureOrSuccess: $hostelGetFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerHomeStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.hostelGetFailureOrSuccess,
                    hostelGetFailureOrSuccess) ||
                other.hostelGetFailureOrSuccess == hostelGetFailureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSubmitting, hostelGetFailureOrSuccess);

  /// Create a copy of OwnerHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerHomeStateImplCopyWith<_$OwnerHomeStateImpl> get copyWith =>
      __$$OwnerHomeStateImplCopyWithImpl<_$OwnerHomeStateImpl>(
          this, _$identity);
}

abstract class _OwnerHomeState implements OwnerHomeState {
  factory _OwnerHomeState(
      {required final bool isSubmitting,
      required final Option<Either<FormFailures, List<HostelResponseModel>>>
          hostelGetFailureOrSuccess}) = _$OwnerHomeStateImpl;

  @override
  bool get isSubmitting;
  @override
  Option<Either<FormFailures, List<HostelResponseModel>>>
      get hostelGetFailureOrSuccess;

  /// Create a copy of OwnerHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerHomeStateImplCopyWith<_$OwnerHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
