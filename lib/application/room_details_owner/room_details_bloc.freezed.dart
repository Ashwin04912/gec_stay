// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> rooms, String hostelId)
        addRoomsToFirestore,
    required TResult Function(String hostelId) getHostelRoomDetailsById,
    required TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)
        bookNowButtonPressed,
    required TResult Function(String userId) loadBookingHistoryForStudent,
    required TResult Function(String bookingId) cancelBookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult? Function(String hostelId)? getHostelRoomDetailsById,
    TResult? Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult? Function(String userId)? loadBookingHistoryForStudent,
    TResult? Function(String bookingId)? cancelBookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult Function(String hostelId)? getHostelRoomDetailsById,
    TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult Function(String userId)? loadBookingHistoryForStudent,
    TResult Function(String bookingId)? cancelBookingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addRoomsToFirestore value) addRoomsToFirestore,
    required TResult Function(_getHostelRoomDetailsById value)
        getHostelRoomDetailsById,
    required TResult Function(_bookNowButtonPressed value) bookNowButtonPressed,
    required TResult Function(_loadBookingHistoryForStudent value)
        loadBookingHistoryForStudent,
    required TResult Function(_CancelBookingEvent value) cancelBookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult? Function(_getHostelRoomDetailsById value)?
        getHostelRoomDetailsById,
    TResult? Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult? Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult? Function(_CancelBookingEvent value)? cancelBookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult Function(_getHostelRoomDetailsById value)? getHostelRoomDetailsById,
    TResult Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult Function(_CancelBookingEvent value)? cancelBookingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailsEventCopyWith<$Res> {
  factory $RoomDetailsEventCopyWith(
          RoomDetailsEvent value, $Res Function(RoomDetailsEvent) then) =
      _$RoomDetailsEventCopyWithImpl<$Res, RoomDetailsEvent>;
}

/// @nodoc
class _$RoomDetailsEventCopyWithImpl<$Res, $Val extends RoomDetailsEvent>
    implements $RoomDetailsEventCopyWith<$Res> {
  _$RoomDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$addRoomsToFirestoreImplCopyWith<$Res> {
  factory _$$addRoomsToFirestoreImplCopyWith(_$addRoomsToFirestoreImpl value,
          $Res Function(_$addRoomsToFirestoreImpl) then) =
      __$$addRoomsToFirestoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> rooms, String hostelId});
}

/// @nodoc
class __$$addRoomsToFirestoreImplCopyWithImpl<$Res>
    extends _$RoomDetailsEventCopyWithImpl<$Res, _$addRoomsToFirestoreImpl>
    implements _$$addRoomsToFirestoreImplCopyWith<$Res> {
  __$$addRoomsToFirestoreImplCopyWithImpl(_$addRoomsToFirestoreImpl _value,
      $Res Function(_$addRoomsToFirestoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? hostelId = null,
  }) {
    return _then(_$addRoomsToFirestoreImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      hostelId: null == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addRoomsToFirestoreImpl implements _addRoomsToFirestore {
  const _$addRoomsToFirestoreImpl(
      {required final Map<String, dynamic> rooms, required this.hostelId})
      : _rooms = rooms;

  final Map<String, dynamic> _rooms;
  @override
  Map<String, dynamic> get rooms {
    if (_rooms is EqualUnmodifiableMapView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rooms);
  }

  @override
  final String hostelId;

  @override
  String toString() {
    return 'RoomDetailsEvent.addRoomsToFirestore(rooms: $rooms, hostelId: $hostelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addRoomsToFirestoreImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rooms), hostelId);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addRoomsToFirestoreImplCopyWith<_$addRoomsToFirestoreImpl> get copyWith =>
      __$$addRoomsToFirestoreImplCopyWithImpl<_$addRoomsToFirestoreImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> rooms, String hostelId)
        addRoomsToFirestore,
    required TResult Function(String hostelId) getHostelRoomDetailsById,
    required TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)
        bookNowButtonPressed,
    required TResult Function(String userId) loadBookingHistoryForStudent,
    required TResult Function(String bookingId) cancelBookingEvent,
  }) {
    return addRoomsToFirestore(rooms, hostelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult? Function(String hostelId)? getHostelRoomDetailsById,
    TResult? Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult? Function(String userId)? loadBookingHistoryForStudent,
    TResult? Function(String bookingId)? cancelBookingEvent,
  }) {
    return addRoomsToFirestore?.call(rooms, hostelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult Function(String hostelId)? getHostelRoomDetailsById,
    TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult Function(String userId)? loadBookingHistoryForStudent,
    TResult Function(String bookingId)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (addRoomsToFirestore != null) {
      return addRoomsToFirestore(rooms, hostelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addRoomsToFirestore value) addRoomsToFirestore,
    required TResult Function(_getHostelRoomDetailsById value)
        getHostelRoomDetailsById,
    required TResult Function(_bookNowButtonPressed value) bookNowButtonPressed,
    required TResult Function(_loadBookingHistoryForStudent value)
        loadBookingHistoryForStudent,
    required TResult Function(_CancelBookingEvent value) cancelBookingEvent,
  }) {
    return addRoomsToFirestore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult? Function(_getHostelRoomDetailsById value)?
        getHostelRoomDetailsById,
    TResult? Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult? Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult? Function(_CancelBookingEvent value)? cancelBookingEvent,
  }) {
    return addRoomsToFirestore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult Function(_getHostelRoomDetailsById value)? getHostelRoomDetailsById,
    TResult Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult Function(_CancelBookingEvent value)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (addRoomsToFirestore != null) {
      return addRoomsToFirestore(this);
    }
    return orElse();
  }
}

abstract class _addRoomsToFirestore implements RoomDetailsEvent {
  const factory _addRoomsToFirestore(
      {required final Map<String, dynamic> rooms,
      required final String hostelId}) = _$addRoomsToFirestoreImpl;

  Map<String, dynamic> get rooms;
  String get hostelId;

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addRoomsToFirestoreImplCopyWith<_$addRoomsToFirestoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getHostelRoomDetailsByIdImplCopyWith<$Res> {
  factory _$$getHostelRoomDetailsByIdImplCopyWith(
          _$getHostelRoomDetailsByIdImpl value,
          $Res Function(_$getHostelRoomDetailsByIdImpl) then) =
      __$$getHostelRoomDetailsByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String hostelId});
}

/// @nodoc
class __$$getHostelRoomDetailsByIdImplCopyWithImpl<$Res>
    extends _$RoomDetailsEventCopyWithImpl<$Res, _$getHostelRoomDetailsByIdImpl>
    implements _$$getHostelRoomDetailsByIdImplCopyWith<$Res> {
  __$$getHostelRoomDetailsByIdImplCopyWithImpl(
      _$getHostelRoomDetailsByIdImpl _value,
      $Res Function(_$getHostelRoomDetailsByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostelId = null,
  }) {
    return _then(_$getHostelRoomDetailsByIdImpl(
      hostelId: null == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getHostelRoomDetailsByIdImpl implements _getHostelRoomDetailsById {
  const _$getHostelRoomDetailsByIdImpl({required this.hostelId});

  @override
  final String hostelId;

  @override
  String toString() {
    return 'RoomDetailsEvent.getHostelRoomDetailsById(hostelId: $hostelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getHostelRoomDetailsByIdImpl &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostelId);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getHostelRoomDetailsByIdImplCopyWith<_$getHostelRoomDetailsByIdImpl>
      get copyWith => __$$getHostelRoomDetailsByIdImplCopyWithImpl<
          _$getHostelRoomDetailsByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> rooms, String hostelId)
        addRoomsToFirestore,
    required TResult Function(String hostelId) getHostelRoomDetailsById,
    required TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)
        bookNowButtonPressed,
    required TResult Function(String userId) loadBookingHistoryForStudent,
    required TResult Function(String bookingId) cancelBookingEvent,
  }) {
    return getHostelRoomDetailsById(hostelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult? Function(String hostelId)? getHostelRoomDetailsById,
    TResult? Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult? Function(String userId)? loadBookingHistoryForStudent,
    TResult? Function(String bookingId)? cancelBookingEvent,
  }) {
    return getHostelRoomDetailsById?.call(hostelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult Function(String hostelId)? getHostelRoomDetailsById,
    TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult Function(String userId)? loadBookingHistoryForStudent,
    TResult Function(String bookingId)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (getHostelRoomDetailsById != null) {
      return getHostelRoomDetailsById(hostelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addRoomsToFirestore value) addRoomsToFirestore,
    required TResult Function(_getHostelRoomDetailsById value)
        getHostelRoomDetailsById,
    required TResult Function(_bookNowButtonPressed value) bookNowButtonPressed,
    required TResult Function(_loadBookingHistoryForStudent value)
        loadBookingHistoryForStudent,
    required TResult Function(_CancelBookingEvent value) cancelBookingEvent,
  }) {
    return getHostelRoomDetailsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult? Function(_getHostelRoomDetailsById value)?
        getHostelRoomDetailsById,
    TResult? Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult? Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult? Function(_CancelBookingEvent value)? cancelBookingEvent,
  }) {
    return getHostelRoomDetailsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult Function(_getHostelRoomDetailsById value)? getHostelRoomDetailsById,
    TResult Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult Function(_CancelBookingEvent value)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (getHostelRoomDetailsById != null) {
      return getHostelRoomDetailsById(this);
    }
    return orElse();
  }
}

abstract class _getHostelRoomDetailsById implements RoomDetailsEvent {
  const factory _getHostelRoomDetailsById({required final String hostelId}) =
      _$getHostelRoomDetailsByIdImpl;

  String get hostelId;

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getHostelRoomDetailsByIdImplCopyWith<_$getHostelRoomDetailsByIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$bookNowButtonPressedImplCopyWith<$Res> {
  factory _$$bookNowButtonPressedImplCopyWith(_$bookNowButtonPressedImpl value,
          $Res Function(_$bookNowButtonPressedImpl) then) =
      __$$bookNowButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String hostelName,
      String hostelOwnerUserId,
      String hostelId,
      List<Map<String, dynamic>> selectedRooms,
      String userName,
      String userPhone});
}

/// @nodoc
class __$$bookNowButtonPressedImplCopyWithImpl<$Res>
    extends _$RoomDetailsEventCopyWithImpl<$Res, _$bookNowButtonPressedImpl>
    implements _$$bookNowButtonPressedImplCopyWith<$Res> {
  __$$bookNowButtonPressedImplCopyWithImpl(_$bookNowButtonPressedImpl _value,
      $Res Function(_$bookNowButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hostelName = null,
    Object? hostelOwnerUserId = null,
    Object? hostelId = null,
    Object? selectedRooms = null,
    Object? userName = null,
    Object? userPhone = null,
  }) {
    return _then(_$bookNowButtonPressedImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      hostelName: null == hostelName
          ? _value.hostelName
          : hostelName // ignore: cast_nullable_to_non_nullable
              as String,
      hostelOwnerUserId: null == hostelOwnerUserId
          ? _value.hostelOwnerUserId
          : hostelOwnerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      hostelId: null == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedRooms: null == selectedRooms
          ? _value._selectedRooms
          : selectedRooms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$bookNowButtonPressedImpl implements _bookNowButtonPressed {
  const _$bookNowButtonPressedImpl(
      {required this.userId,
      required this.hostelName,
      required this.hostelOwnerUserId,
      required this.hostelId,
      required final List<Map<String, dynamic>> selectedRooms,
      required this.userName,
      required this.userPhone})
      : _selectedRooms = selectedRooms;

  @override
  final String userId;
  @override
  final String hostelName;
  @override
  final String hostelOwnerUserId;
  @override
  final String hostelId;
  final List<Map<String, dynamic>> _selectedRooms;
  @override
  List<Map<String, dynamic>> get selectedRooms {
    if (_selectedRooms is EqualUnmodifiableListView) return _selectedRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedRooms);
  }

  @override
  final String userName;
  @override
  final String userPhone;

  @override
  String toString() {
    return 'RoomDetailsEvent.bookNowButtonPressed(userId: $userId, hostelName: $hostelName, hostelOwnerUserId: $hostelOwnerUserId, hostelId: $hostelId, selectedRooms: $selectedRooms, userName: $userName, userPhone: $userPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$bookNowButtonPressedImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hostelName, hostelName) ||
                other.hostelName == hostelName) &&
            (identical(other.hostelOwnerUserId, hostelOwnerUserId) ||
                other.hostelOwnerUserId == hostelOwnerUserId) &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId) &&
            const DeepCollectionEquality()
                .equals(other._selectedRooms, _selectedRooms) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      hostelName,
      hostelOwnerUserId,
      hostelId,
      const DeepCollectionEquality().hash(_selectedRooms),
      userName,
      userPhone);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$bookNowButtonPressedImplCopyWith<_$bookNowButtonPressedImpl>
      get copyWith =>
          __$$bookNowButtonPressedImplCopyWithImpl<_$bookNowButtonPressedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> rooms, String hostelId)
        addRoomsToFirestore,
    required TResult Function(String hostelId) getHostelRoomDetailsById,
    required TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)
        bookNowButtonPressed,
    required TResult Function(String userId) loadBookingHistoryForStudent,
    required TResult Function(String bookingId) cancelBookingEvent,
  }) {
    return bookNowButtonPressed(userId, hostelName, hostelOwnerUserId, hostelId,
        selectedRooms, userName, userPhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult? Function(String hostelId)? getHostelRoomDetailsById,
    TResult? Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult? Function(String userId)? loadBookingHistoryForStudent,
    TResult? Function(String bookingId)? cancelBookingEvent,
  }) {
    return bookNowButtonPressed?.call(userId, hostelName, hostelOwnerUserId,
        hostelId, selectedRooms, userName, userPhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult Function(String hostelId)? getHostelRoomDetailsById,
    TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult Function(String userId)? loadBookingHistoryForStudent,
    TResult Function(String bookingId)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (bookNowButtonPressed != null) {
      return bookNowButtonPressed(userId, hostelName, hostelOwnerUserId,
          hostelId, selectedRooms, userName, userPhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addRoomsToFirestore value) addRoomsToFirestore,
    required TResult Function(_getHostelRoomDetailsById value)
        getHostelRoomDetailsById,
    required TResult Function(_bookNowButtonPressed value) bookNowButtonPressed,
    required TResult Function(_loadBookingHistoryForStudent value)
        loadBookingHistoryForStudent,
    required TResult Function(_CancelBookingEvent value) cancelBookingEvent,
  }) {
    return bookNowButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult? Function(_getHostelRoomDetailsById value)?
        getHostelRoomDetailsById,
    TResult? Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult? Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult? Function(_CancelBookingEvent value)? cancelBookingEvent,
  }) {
    return bookNowButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult Function(_getHostelRoomDetailsById value)? getHostelRoomDetailsById,
    TResult Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult Function(_CancelBookingEvent value)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (bookNowButtonPressed != null) {
      return bookNowButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _bookNowButtonPressed implements RoomDetailsEvent {
  const factory _bookNowButtonPressed(
      {required final String userId,
      required final String hostelName,
      required final String hostelOwnerUserId,
      required final String hostelId,
      required final List<Map<String, dynamic>> selectedRooms,
      required final String userName,
      required final String userPhone}) = _$bookNowButtonPressedImpl;

  String get userId;
  String get hostelName;
  String get hostelOwnerUserId;
  String get hostelId;
  List<Map<String, dynamic>> get selectedRooms;
  String get userName;
  String get userPhone;

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$bookNowButtonPressedImplCopyWith<_$bookNowButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loadBookingHistoryForStudentImplCopyWith<$Res> {
  factory _$$loadBookingHistoryForStudentImplCopyWith(
          _$loadBookingHistoryForStudentImpl value,
          $Res Function(_$loadBookingHistoryForStudentImpl) then) =
      __$$loadBookingHistoryForStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$loadBookingHistoryForStudentImplCopyWithImpl<$Res>
    extends _$RoomDetailsEventCopyWithImpl<$Res,
        _$loadBookingHistoryForStudentImpl>
    implements _$$loadBookingHistoryForStudentImplCopyWith<$Res> {
  __$$loadBookingHistoryForStudentImplCopyWithImpl(
      _$loadBookingHistoryForStudentImpl _value,
      $Res Function(_$loadBookingHistoryForStudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$loadBookingHistoryForStudentImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$loadBookingHistoryForStudentImpl
    implements _loadBookingHistoryForStudent {
  const _$loadBookingHistoryForStudentImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'RoomDetailsEvent.loadBookingHistoryForStudent(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadBookingHistoryForStudentImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loadBookingHistoryForStudentImplCopyWith<
          _$loadBookingHistoryForStudentImpl>
      get copyWith => __$$loadBookingHistoryForStudentImplCopyWithImpl<
          _$loadBookingHistoryForStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> rooms, String hostelId)
        addRoomsToFirestore,
    required TResult Function(String hostelId) getHostelRoomDetailsById,
    required TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)
        bookNowButtonPressed,
    required TResult Function(String userId) loadBookingHistoryForStudent,
    required TResult Function(String bookingId) cancelBookingEvent,
  }) {
    return loadBookingHistoryForStudent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult? Function(String hostelId)? getHostelRoomDetailsById,
    TResult? Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult? Function(String userId)? loadBookingHistoryForStudent,
    TResult? Function(String bookingId)? cancelBookingEvent,
  }) {
    return loadBookingHistoryForStudent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult Function(String hostelId)? getHostelRoomDetailsById,
    TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult Function(String userId)? loadBookingHistoryForStudent,
    TResult Function(String bookingId)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (loadBookingHistoryForStudent != null) {
      return loadBookingHistoryForStudent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addRoomsToFirestore value) addRoomsToFirestore,
    required TResult Function(_getHostelRoomDetailsById value)
        getHostelRoomDetailsById,
    required TResult Function(_bookNowButtonPressed value) bookNowButtonPressed,
    required TResult Function(_loadBookingHistoryForStudent value)
        loadBookingHistoryForStudent,
    required TResult Function(_CancelBookingEvent value) cancelBookingEvent,
  }) {
    return loadBookingHistoryForStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult? Function(_getHostelRoomDetailsById value)?
        getHostelRoomDetailsById,
    TResult? Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult? Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult? Function(_CancelBookingEvent value)? cancelBookingEvent,
  }) {
    return loadBookingHistoryForStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult Function(_getHostelRoomDetailsById value)? getHostelRoomDetailsById,
    TResult Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult Function(_CancelBookingEvent value)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (loadBookingHistoryForStudent != null) {
      return loadBookingHistoryForStudent(this);
    }
    return orElse();
  }
}

abstract class _loadBookingHistoryForStudent implements RoomDetailsEvent {
  const factory _loadBookingHistoryForStudent({required final String userId}) =
      _$loadBookingHistoryForStudentImpl;

  String get userId;

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loadBookingHistoryForStudentImplCopyWith<
          _$loadBookingHistoryForStudentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelBookingEventImplCopyWith<$Res> {
  factory _$$CancelBookingEventImplCopyWith(_$CancelBookingEventImpl value,
          $Res Function(_$CancelBookingEventImpl) then) =
      __$$CancelBookingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$CancelBookingEventImplCopyWithImpl<$Res>
    extends _$RoomDetailsEventCopyWithImpl<$Res, _$CancelBookingEventImpl>
    implements _$$CancelBookingEventImplCopyWith<$Res> {
  __$$CancelBookingEventImplCopyWithImpl(_$CancelBookingEventImpl _value,
      $Res Function(_$CancelBookingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$CancelBookingEventImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelBookingEventImpl implements _CancelBookingEvent {
  const _$CancelBookingEventImpl({required this.bookingId});

  @override
  final String bookingId;

  @override
  String toString() {
    return 'RoomDetailsEvent.cancelBookingEvent(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelBookingEventImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelBookingEventImplCopyWith<_$CancelBookingEventImpl> get copyWith =>
      __$$CancelBookingEventImplCopyWithImpl<_$CancelBookingEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> rooms, String hostelId)
        addRoomsToFirestore,
    required TResult Function(String hostelId) getHostelRoomDetailsById,
    required TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)
        bookNowButtonPressed,
    required TResult Function(String userId) loadBookingHistoryForStudent,
    required TResult Function(String bookingId) cancelBookingEvent,
  }) {
    return cancelBookingEvent(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult? Function(String hostelId)? getHostelRoomDetailsById,
    TResult? Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult? Function(String userId)? loadBookingHistoryForStudent,
    TResult? Function(String bookingId)? cancelBookingEvent,
  }) {
    return cancelBookingEvent?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> rooms, String hostelId)?
        addRoomsToFirestore,
    TResult Function(String hostelId)? getHostelRoomDetailsById,
    TResult Function(
            String userId,
            String hostelName,
            String hostelOwnerUserId,
            String hostelId,
            List<Map<String, dynamic>> selectedRooms,
            String userName,
            String userPhone)?
        bookNowButtonPressed,
    TResult Function(String userId)? loadBookingHistoryForStudent,
    TResult Function(String bookingId)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (cancelBookingEvent != null) {
      return cancelBookingEvent(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addRoomsToFirestore value) addRoomsToFirestore,
    required TResult Function(_getHostelRoomDetailsById value)
        getHostelRoomDetailsById,
    required TResult Function(_bookNowButtonPressed value) bookNowButtonPressed,
    required TResult Function(_loadBookingHistoryForStudent value)
        loadBookingHistoryForStudent,
    required TResult Function(_CancelBookingEvent value) cancelBookingEvent,
  }) {
    return cancelBookingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult? Function(_getHostelRoomDetailsById value)?
        getHostelRoomDetailsById,
    TResult? Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult? Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult? Function(_CancelBookingEvent value)? cancelBookingEvent,
  }) {
    return cancelBookingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addRoomsToFirestore value)? addRoomsToFirestore,
    TResult Function(_getHostelRoomDetailsById value)? getHostelRoomDetailsById,
    TResult Function(_bookNowButtonPressed value)? bookNowButtonPressed,
    TResult Function(_loadBookingHistoryForStudent value)?
        loadBookingHistoryForStudent,
    TResult Function(_CancelBookingEvent value)? cancelBookingEvent,
    required TResult orElse(),
  }) {
    if (cancelBookingEvent != null) {
      return cancelBookingEvent(this);
    }
    return orElse();
  }
}

abstract class _CancelBookingEvent implements RoomDetailsEvent {
  const factory _CancelBookingEvent({required final String bookingId}) =
      _$CancelBookingEventImpl;

  String get bookingId;

  /// Create a copy of RoomDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelBookingEventImplCopyWith<_$CancelBookingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomDetailsState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get processingBookingId => throw _privateConstructorUsedError;
  Option<Either<FormFailures, Unit>> get successOrFailureOption =>
      throw _privateConstructorUsedError;
  Option<Either<FormFailures, List<Map<String, dynamic>>>>
      get fetchSuccessOrFailureOption => throw _privateConstructorUsedError;

  /// Create a copy of RoomDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomDetailsStateCopyWith<RoomDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailsStateCopyWith<$Res> {
  factory $RoomDetailsStateCopyWith(
          RoomDetailsState value, $Res Function(RoomDetailsState) then) =
      _$RoomDetailsStateCopyWithImpl<$Res, RoomDetailsState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      String processingBookingId,
      Option<Either<FormFailures, Unit>> successOrFailureOption,
      Option<Either<FormFailures, List<Map<String, dynamic>>>>
          fetchSuccessOrFailureOption});
}

/// @nodoc
class _$RoomDetailsStateCopyWithImpl<$Res, $Val extends RoomDetailsState>
    implements $RoomDetailsStateCopyWith<$Res> {
  _$RoomDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? processingBookingId = null,
    Object? successOrFailureOption = null,
    Object? fetchSuccessOrFailureOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      processingBookingId: null == processingBookingId
          ? _value.processingBookingId
          : processingBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      successOrFailureOption: null == successOrFailureOption
          ? _value.successOrFailureOption
          : successOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, Unit>>,
      fetchSuccessOrFailureOption: null == fetchSuccessOrFailureOption
          ? _value.fetchSuccessOrFailureOption
          : fetchSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, List<Map<String, dynamic>>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDetailsStateImplCopyWith<$Res>
    implements $RoomDetailsStateCopyWith<$Res> {
  factory _$$RoomDetailsStateImplCopyWith(_$RoomDetailsStateImpl value,
          $Res Function(_$RoomDetailsStateImpl) then) =
      __$$RoomDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      String processingBookingId,
      Option<Either<FormFailures, Unit>> successOrFailureOption,
      Option<Either<FormFailures, List<Map<String, dynamic>>>>
          fetchSuccessOrFailureOption});
}

/// @nodoc
class __$$RoomDetailsStateImplCopyWithImpl<$Res>
    extends _$RoomDetailsStateCopyWithImpl<$Res, _$RoomDetailsStateImpl>
    implements _$$RoomDetailsStateImplCopyWith<$Res> {
  __$$RoomDetailsStateImplCopyWithImpl(_$RoomDetailsStateImpl _value,
      $Res Function(_$RoomDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? processingBookingId = null,
    Object? successOrFailureOption = null,
    Object? fetchSuccessOrFailureOption = null,
  }) {
    return _then(_$RoomDetailsStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      processingBookingId: null == processingBookingId
          ? _value.processingBookingId
          : processingBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      successOrFailureOption: null == successOrFailureOption
          ? _value.successOrFailureOption
          : successOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, Unit>>,
      fetchSuccessOrFailureOption: null == fetchSuccessOrFailureOption
          ? _value.fetchSuccessOrFailureOption
          : fetchSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailures, List<Map<String, dynamic>>>>,
    ));
  }
}

/// @nodoc

class _$RoomDetailsStateImpl implements _RoomDetailsState {
  _$RoomDetailsStateImpl(
      {required this.isSubmitting,
      required this.processingBookingId,
      required this.successOrFailureOption,
      required this.fetchSuccessOrFailureOption});

  @override
  final bool isSubmitting;
  @override
  final String processingBookingId;
  @override
  final Option<Either<FormFailures, Unit>> successOrFailureOption;
  @override
  final Option<Either<FormFailures, List<Map<String, dynamic>>>>
      fetchSuccessOrFailureOption;

  @override
  String toString() {
    return 'RoomDetailsState(isSubmitting: $isSubmitting, processingBookingId: $processingBookingId, successOrFailureOption: $successOrFailureOption, fetchSuccessOrFailureOption: $fetchSuccessOrFailureOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDetailsStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.processingBookingId, processingBookingId) ||
                other.processingBookingId == processingBookingId) &&
            (identical(other.successOrFailureOption, successOrFailureOption) ||
                other.successOrFailureOption == successOrFailureOption) &&
            (identical(other.fetchSuccessOrFailureOption,
                    fetchSuccessOrFailureOption) ||
                other.fetchSuccessOrFailureOption ==
                    fetchSuccessOrFailureOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting,
      processingBookingId, successOrFailureOption, fetchSuccessOrFailureOption);

  /// Create a copy of RoomDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDetailsStateImplCopyWith<_$RoomDetailsStateImpl> get copyWith =>
      __$$RoomDetailsStateImplCopyWithImpl<_$RoomDetailsStateImpl>(
          this, _$identity);
}

abstract class _RoomDetailsState implements RoomDetailsState {
  factory _RoomDetailsState(
      {required final bool isSubmitting,
      required final String processingBookingId,
      required final Option<Either<FormFailures, Unit>> successOrFailureOption,
      required final Option<Either<FormFailures, List<Map<String, dynamic>>>>
          fetchSuccessOrFailureOption}) = _$RoomDetailsStateImpl;

  @override
  bool get isSubmitting;
  @override
  String get processingBookingId;
  @override
  Option<Either<FormFailures, Unit>> get successOrFailureOption;
  @override
  Option<Either<FormFailures, List<Map<String, dynamic>>>>
      get fetchSuccessOrFailureOption;

  /// Create a copy of RoomDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomDetailsStateImplCopyWith<_$RoomDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
