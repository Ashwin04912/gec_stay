// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_hostel_process_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonHostelProcessEvent {
  String get hostelId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String stars,
            String userId,
            String hostelOwnerUserId,
            String userName,
            String comment,
            String hostelId)
        submitReviewButtonPressed,
    required TResult Function(String hostelId) getAllratingsAndReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stars, String userId, String hostelOwnerUserId,
            String userName, String comment, String hostelId)?
        submitReviewButtonPressed,
    TResult? Function(String hostelId)? getAllratingsAndReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stars, String userId, String hostelOwnerUserId,
            String userName, String comment, String hostelId)?
        submitReviewButtonPressed,
    TResult Function(String hostelId)? getAllratingsAndReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_submitReviewButtonPressed value)
        submitReviewButtonPressed,
    required TResult Function(_getAllratingsAndReview value)
        getAllratingsAndReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_submitReviewButtonPressed value)?
        submitReviewButtonPressed,
    TResult? Function(_getAllratingsAndReview value)? getAllratingsAndReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_submitReviewButtonPressed value)?
        submitReviewButtonPressed,
    TResult Function(_getAllratingsAndReview value)? getAllratingsAndReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonHostelProcessEventCopyWith<CommonHostelProcessEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonHostelProcessEventCopyWith<$Res> {
  factory $CommonHostelProcessEventCopyWith(CommonHostelProcessEvent value,
          $Res Function(CommonHostelProcessEvent) then) =
      _$CommonHostelProcessEventCopyWithImpl<$Res, CommonHostelProcessEvent>;
  @useResult
  $Res call({String hostelId});
}

/// @nodoc
class _$CommonHostelProcessEventCopyWithImpl<$Res,
        $Val extends CommonHostelProcessEvent>
    implements $CommonHostelProcessEventCopyWith<$Res> {
  _$CommonHostelProcessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostelId = null,
  }) {
    return _then(_value.copyWith(
      hostelId: null == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$submitReviewButtonPressedImplCopyWith<$Res>
    implements $CommonHostelProcessEventCopyWith<$Res> {
  factory _$$submitReviewButtonPressedImplCopyWith(
          _$submitReviewButtonPressedImpl value,
          $Res Function(_$submitReviewButtonPressedImpl) then) =
      __$$submitReviewButtonPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stars,
      String userId,
      String hostelOwnerUserId,
      String userName,
      String comment,
      String hostelId});
}

/// @nodoc
class __$$submitReviewButtonPressedImplCopyWithImpl<$Res>
    extends _$CommonHostelProcessEventCopyWithImpl<$Res,
        _$submitReviewButtonPressedImpl>
    implements _$$submitReviewButtonPressedImplCopyWith<$Res> {
  __$$submitReviewButtonPressedImplCopyWithImpl(
      _$submitReviewButtonPressedImpl _value,
      $Res Function(_$submitReviewButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stars = null,
    Object? userId = null,
    Object? hostelOwnerUserId = null,
    Object? userName = null,
    Object? comment = null,
    Object? hostelId = null,
  }) {
    return _then(_$submitReviewButtonPressedImpl(
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      hostelOwnerUserId: null == hostelOwnerUserId
          ? _value.hostelOwnerUserId
          : hostelOwnerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      hostelId: null == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$submitReviewButtonPressedImpl implements _submitReviewButtonPressed {
  const _$submitReviewButtonPressedImpl(
      {required this.stars,
      required this.userId,
      required this.hostelOwnerUserId,
      required this.userName,
      required this.comment,
      required this.hostelId});

  @override
  final String stars;
  @override
  final String userId;
  @override
  final String hostelOwnerUserId;
  @override
  final String userName;
  @override
  final String comment;
  @override
  final String hostelId;

  @override
  String toString() {
    return 'CommonHostelProcessEvent.submitReviewButtonPressed(stars: $stars, userId: $userId, hostelOwnerUserId: $hostelOwnerUserId, userName: $userName, comment: $comment, hostelId: $hostelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$submitReviewButtonPressedImpl &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hostelOwnerUserId, hostelOwnerUserId) ||
                other.hostelOwnerUserId == hostelOwnerUserId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stars, userId, hostelOwnerUserId,
      userName, comment, hostelId);

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$submitReviewButtonPressedImplCopyWith<_$submitReviewButtonPressedImpl>
      get copyWith => __$$submitReviewButtonPressedImplCopyWithImpl<
          _$submitReviewButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String stars,
            String userId,
            String hostelOwnerUserId,
            String userName,
            String comment,
            String hostelId)
        submitReviewButtonPressed,
    required TResult Function(String hostelId) getAllratingsAndReview,
  }) {
    return submitReviewButtonPressed(
        stars, userId, hostelOwnerUserId, userName, comment, hostelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stars, String userId, String hostelOwnerUserId,
            String userName, String comment, String hostelId)?
        submitReviewButtonPressed,
    TResult? Function(String hostelId)? getAllratingsAndReview,
  }) {
    return submitReviewButtonPressed?.call(
        stars, userId, hostelOwnerUserId, userName, comment, hostelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stars, String userId, String hostelOwnerUserId,
            String userName, String comment, String hostelId)?
        submitReviewButtonPressed,
    TResult Function(String hostelId)? getAllratingsAndReview,
    required TResult orElse(),
  }) {
    if (submitReviewButtonPressed != null) {
      return submitReviewButtonPressed(
          stars, userId, hostelOwnerUserId, userName, comment, hostelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_submitReviewButtonPressed value)
        submitReviewButtonPressed,
    required TResult Function(_getAllratingsAndReview value)
        getAllratingsAndReview,
  }) {
    return submitReviewButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_submitReviewButtonPressed value)?
        submitReviewButtonPressed,
    TResult? Function(_getAllratingsAndReview value)? getAllratingsAndReview,
  }) {
    return submitReviewButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_submitReviewButtonPressed value)?
        submitReviewButtonPressed,
    TResult Function(_getAllratingsAndReview value)? getAllratingsAndReview,
    required TResult orElse(),
  }) {
    if (submitReviewButtonPressed != null) {
      return submitReviewButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _submitReviewButtonPressed implements CommonHostelProcessEvent {
  const factory _submitReviewButtonPressed(
      {required final String stars,
      required final String userId,
      required final String hostelOwnerUserId,
      required final String userName,
      required final String comment,
      required final String hostelId}) = _$submitReviewButtonPressedImpl;

  String get stars;
  String get userId;
  String get hostelOwnerUserId;
  String get userName;
  String get comment;
  @override
  String get hostelId;

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$submitReviewButtonPressedImplCopyWith<_$submitReviewButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getAllratingsAndReviewImplCopyWith<$Res>
    implements $CommonHostelProcessEventCopyWith<$Res> {
  factory _$$getAllratingsAndReviewImplCopyWith(
          _$getAllratingsAndReviewImpl value,
          $Res Function(_$getAllratingsAndReviewImpl) then) =
      __$$getAllratingsAndReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hostelId});
}

/// @nodoc
class __$$getAllratingsAndReviewImplCopyWithImpl<$Res>
    extends _$CommonHostelProcessEventCopyWithImpl<$Res,
        _$getAllratingsAndReviewImpl>
    implements _$$getAllratingsAndReviewImplCopyWith<$Res> {
  __$$getAllratingsAndReviewImplCopyWithImpl(
      _$getAllratingsAndReviewImpl _value,
      $Res Function(_$getAllratingsAndReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostelId = null,
  }) {
    return _then(_$getAllratingsAndReviewImpl(
      hostelId: null == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getAllratingsAndReviewImpl implements _getAllratingsAndReview {
  const _$getAllratingsAndReviewImpl({required this.hostelId});

  @override
  final String hostelId;

  @override
  String toString() {
    return 'CommonHostelProcessEvent.getAllratingsAndReview(hostelId: $hostelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getAllratingsAndReviewImpl &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostelId);

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getAllratingsAndReviewImplCopyWith<_$getAllratingsAndReviewImpl>
      get copyWith => __$$getAllratingsAndReviewImplCopyWithImpl<
          _$getAllratingsAndReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String stars,
            String userId,
            String hostelOwnerUserId,
            String userName,
            String comment,
            String hostelId)
        submitReviewButtonPressed,
    required TResult Function(String hostelId) getAllratingsAndReview,
  }) {
    return getAllratingsAndReview(hostelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stars, String userId, String hostelOwnerUserId,
            String userName, String comment, String hostelId)?
        submitReviewButtonPressed,
    TResult? Function(String hostelId)? getAllratingsAndReview,
  }) {
    return getAllratingsAndReview?.call(hostelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stars, String userId, String hostelOwnerUserId,
            String userName, String comment, String hostelId)?
        submitReviewButtonPressed,
    TResult Function(String hostelId)? getAllratingsAndReview,
    required TResult orElse(),
  }) {
    if (getAllratingsAndReview != null) {
      return getAllratingsAndReview(hostelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_submitReviewButtonPressed value)
        submitReviewButtonPressed,
    required TResult Function(_getAllratingsAndReview value)
        getAllratingsAndReview,
  }) {
    return getAllratingsAndReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_submitReviewButtonPressed value)?
        submitReviewButtonPressed,
    TResult? Function(_getAllratingsAndReview value)? getAllratingsAndReview,
  }) {
    return getAllratingsAndReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_submitReviewButtonPressed value)?
        submitReviewButtonPressed,
    TResult Function(_getAllratingsAndReview value)? getAllratingsAndReview,
    required TResult orElse(),
  }) {
    if (getAllratingsAndReview != null) {
      return getAllratingsAndReview(this);
    }
    return orElse();
  }
}

abstract class _getAllratingsAndReview implements CommonHostelProcessEvent {
  const factory _getAllratingsAndReview({required final String hostelId}) =
      _$getAllratingsAndReviewImpl;

  @override
  String get hostelId;

  /// Create a copy of CommonHostelProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getAllratingsAndReviewImplCopyWith<_$getAllratingsAndReviewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonHostelProcessState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<FormFailures, Unit>> get successOrFailure =>
      throw _privateConstructorUsedError;
  Option<Either<FormFailures, List<Map<String, String>>>>
      get getAllRatingsSuccessOrFailure => throw _privateConstructorUsedError;
  List<Map<String, String>> get respList => throw _privateConstructorUsedError;

  /// Create a copy of CommonHostelProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonHostelProcessStateCopyWith<CommonHostelProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonHostelProcessStateCopyWith<$Res> {
  factory $CommonHostelProcessStateCopyWith(CommonHostelProcessState value,
          $Res Function(CommonHostelProcessState) then) =
      _$CommonHostelProcessStateCopyWithImpl<$Res, CommonHostelProcessState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<FormFailures, Unit>> successOrFailure,
      Option<Either<FormFailures, List<Map<String, String>>>>
          getAllRatingsSuccessOrFailure,
      List<Map<String, String>> respList});
}

/// @nodoc
class _$CommonHostelProcessStateCopyWithImpl<$Res,
        $Val extends CommonHostelProcessState>
    implements $CommonHostelProcessStateCopyWith<$Res> {
  _$CommonHostelProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonHostelProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? successOrFailure = null,
    Object? getAllRatingsSuccessOrFailure = null,
    Object? respList = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, Unit>>,
      getAllRatingsSuccessOrFailure: null == getAllRatingsSuccessOrFailure
          ? _value.getAllRatingsSuccessOrFailure
          : getAllRatingsSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, List<Map<String, String>>>>,
      respList: null == respList
          ? _value.respList
          : respList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonHostelProcessStateImplCopyWith<$Res>
    implements $CommonHostelProcessStateCopyWith<$Res> {
  factory _$$CommonHostelProcessStateImplCopyWith(
          _$CommonHostelProcessStateImpl value,
          $Res Function(_$CommonHostelProcessStateImpl) then) =
      __$$CommonHostelProcessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<FormFailures, Unit>> successOrFailure,
      Option<Either<FormFailures, List<Map<String, String>>>>
          getAllRatingsSuccessOrFailure,
      List<Map<String, String>> respList});
}

/// @nodoc
class __$$CommonHostelProcessStateImplCopyWithImpl<$Res>
    extends _$CommonHostelProcessStateCopyWithImpl<$Res,
        _$CommonHostelProcessStateImpl>
    implements _$$CommonHostelProcessStateImplCopyWith<$Res> {
  __$$CommonHostelProcessStateImplCopyWithImpl(
      _$CommonHostelProcessStateImpl _value,
      $Res Function(_$CommonHostelProcessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonHostelProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? successOrFailure = null,
    Object? getAllRatingsSuccessOrFailure = null,
    Object? respList = null,
  }) {
    return _then(_$CommonHostelProcessStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, Unit>>,
      getAllRatingsSuccessOrFailure: null == getAllRatingsSuccessOrFailure
          ? _value.getAllRatingsSuccessOrFailure
          : getAllRatingsSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, List<Map<String, String>>>>,
      respList: null == respList
          ? _value._respList
          : respList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$CommonHostelProcessStateImpl implements _CommonHostelProcessState {
  _$CommonHostelProcessStateImpl(
      {required this.isSubmitting,
      required this.successOrFailure,
      required this.getAllRatingsSuccessOrFailure,
      required final List<Map<String, String>> respList})
      : _respList = respList;

  @override
  final bool isSubmitting;
  @override
  final Option<Either<FormFailures, Unit>> successOrFailure;
  @override
  final Option<Either<FormFailures, List<Map<String, String>>>>
      getAllRatingsSuccessOrFailure;
  final List<Map<String, String>> _respList;
  @override
  List<Map<String, String>> get respList {
    if (_respList is EqualUnmodifiableListView) return _respList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_respList);
  }

  @override
  String toString() {
    return 'CommonHostelProcessState(isSubmitting: $isSubmitting, successOrFailure: $successOrFailure, getAllRatingsSuccessOrFailure: $getAllRatingsSuccessOrFailure, respList: $respList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonHostelProcessStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.successOrFailure, successOrFailure) ||
                other.successOrFailure == successOrFailure) &&
            (identical(other.getAllRatingsSuccessOrFailure,
                    getAllRatingsSuccessOrFailure) ||
                other.getAllRatingsSuccessOrFailure ==
                    getAllRatingsSuccessOrFailure) &&
            const DeepCollectionEquality().equals(other._respList, _respList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      successOrFailure,
      getAllRatingsSuccessOrFailure,
      const DeepCollectionEquality().hash(_respList));

  /// Create a copy of CommonHostelProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonHostelProcessStateImplCopyWith<_$CommonHostelProcessStateImpl>
      get copyWith => __$$CommonHostelProcessStateImplCopyWithImpl<
          _$CommonHostelProcessStateImpl>(this, _$identity);
}

abstract class _CommonHostelProcessState implements CommonHostelProcessState {
  factory _CommonHostelProcessState(
          {required final bool isSubmitting,
          required final Option<Either<FormFailures, Unit>> successOrFailure,
          required final Option<Either<FormFailures, List<Map<String, String>>>>
              getAllRatingsSuccessOrFailure,
          required final List<Map<String, String>> respList}) =
      _$CommonHostelProcessStateImpl;

  @override
  bool get isSubmitting;
  @override
  Option<Either<FormFailures, Unit>> get successOrFailure;
  @override
  Option<Either<FormFailures, List<Map<String, String>>>>
      get getAllRatingsSuccessOrFailure;
  @override
  List<Map<String, String>> get respList;

  /// Create a copy of CommonHostelProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonHostelProcessStateImplCopyWith<_$CommonHostelProcessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
