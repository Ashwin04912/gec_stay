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
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OwnerHomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerHomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OwnerHomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OwnerHomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$OwnerHomeState {
  bool get isSubmitting => throw _privateConstructorUsedError;

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
  $Res call({bool isSubmitting});
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
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool isSubmitting});
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
  }) {
    return _then(_$OwnerHomeStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OwnerHomeStateImpl implements _OwnerHomeState {
  _$OwnerHomeStateImpl({required this.isSubmitting});

  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'OwnerHomeState(isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerHomeStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting);

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
  factory _OwnerHomeState({required final bool isSubmitting}) =
      _$OwnerHomeStateImpl;

  @override
  bool get isSubmitting;

  /// Create a copy of OwnerHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerHomeStateImplCopyWith<_$OwnerHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
