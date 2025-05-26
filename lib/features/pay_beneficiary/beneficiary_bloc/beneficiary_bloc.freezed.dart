// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BeneficiaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsers value) getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryEventCopyWith<$Res> {
  factory $BeneficiaryEventCopyWith(
          BeneficiaryEvent value, $Res Function(BeneficiaryEvent) then) =
      _$BeneficiaryEventCopyWithImpl<$Res, BeneficiaryEvent>;
}

/// @nodoc
class _$BeneficiaryEventCopyWithImpl<$Res, $Val extends BeneficiaryEvent>
    implements $BeneficiaryEventCopyWith<$Res> {
  _$BeneficiaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeneficiaryEvent
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
    extends _$BeneficiaryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BeneficiaryEvent.started()';
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
    required TResult Function() getAllUsers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
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
    required TResult Function(GetAllUsers value) getAllUsers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BeneficiaryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllUsersImplCopyWith<$Res> {
  factory _$$GetAllUsersImplCopyWith(
          _$GetAllUsersImpl value, $Res Function(_$GetAllUsersImpl) then) =
      __$$GetAllUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUsersImplCopyWithImpl<$Res>
    extends _$BeneficiaryEventCopyWithImpl<$Res, _$GetAllUsersImpl>
    implements _$$GetAllUsersImplCopyWith<$Res> {
  __$$GetAllUsersImplCopyWithImpl(
      _$GetAllUsersImpl _value, $Res Function(_$GetAllUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllUsersImpl implements GetAllUsers {
  const _$GetAllUsersImpl();

  @override
  String toString() {
    return 'BeneficiaryEvent.getAllUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUsers,
  }) {
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
  }) {
    return getAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsers value) getAllUsers,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class GetAllUsers implements BeneficiaryEvent {
  const factory GetAllUsers() = _$GetAllUsersImpl;
}

/// @nodoc
mixin _$BeneficiaryState {
  bool get fetchingList => throw _privateConstructorUsedError;
  List<dynamic> get usersList => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get fetchingBeneficiaryFailureOrUnit =>
      throw _privateConstructorUsedError;

  /// Create a copy of BeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeneficiaryStateCopyWith<BeneficiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryStateCopyWith<$Res> {
  factory $BeneficiaryStateCopyWith(
          BeneficiaryState value, $Res Function(BeneficiaryState) then) =
      _$BeneficiaryStateCopyWithImpl<$Res, BeneficiaryState>;
  @useResult
  $Res call(
      {bool fetchingList,
      List<dynamic> usersList,
      Option<Either<Failure, Unit>> fetchingBeneficiaryFailureOrUnit});
}

/// @nodoc
class _$BeneficiaryStateCopyWithImpl<$Res, $Val extends BeneficiaryState>
    implements $BeneficiaryStateCopyWith<$Res> {
  _$BeneficiaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingList = null,
    Object? usersList = null,
    Object? fetchingBeneficiaryFailureOrUnit = null,
  }) {
    return _then(_value.copyWith(
      fetchingList: null == fetchingList
          ? _value.fetchingList
          : fetchingList // ignore: cast_nullable_to_non_nullable
              as bool,
      usersList: null == usersList
          ? _value.usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      fetchingBeneficiaryFailureOrUnit: null == fetchingBeneficiaryFailureOrUnit
          ? _value.fetchingBeneficiaryFailureOrUnit
          : fetchingBeneficiaryFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiaryStateImplCopyWith<$Res>
    implements $BeneficiaryStateCopyWith<$Res> {
  factory _$$BeneficiaryStateImplCopyWith(_$BeneficiaryStateImpl value,
          $Res Function(_$BeneficiaryStateImpl) then) =
      __$$BeneficiaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool fetchingList,
      List<dynamic> usersList,
      Option<Either<Failure, Unit>> fetchingBeneficiaryFailureOrUnit});
}

/// @nodoc
class __$$BeneficiaryStateImplCopyWithImpl<$Res>
    extends _$BeneficiaryStateCopyWithImpl<$Res, _$BeneficiaryStateImpl>
    implements _$$BeneficiaryStateImplCopyWith<$Res> {
  __$$BeneficiaryStateImplCopyWithImpl(_$BeneficiaryStateImpl _value,
      $Res Function(_$BeneficiaryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingList = null,
    Object? usersList = null,
    Object? fetchingBeneficiaryFailureOrUnit = null,
  }) {
    return _then(_$BeneficiaryStateImpl(
      fetchingList: null == fetchingList
          ? _value.fetchingList
          : fetchingList // ignore: cast_nullable_to_non_nullable
              as bool,
      usersList: null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      fetchingBeneficiaryFailureOrUnit: null == fetchingBeneficiaryFailureOrUnit
          ? _value.fetchingBeneficiaryFailureOrUnit
          : fetchingBeneficiaryFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$BeneficiaryStateImpl implements _BeneficiaryState {
  const _$BeneficiaryStateImpl(
      {this.fetchingList = false,
      final List<dynamic> usersList = const [],
      this.fetchingBeneficiaryFailureOrUnit = const None()})
      : _usersList = usersList;

  @override
  @JsonKey()
  final bool fetchingList;
  final List<dynamic> _usersList;
  @override
  @JsonKey()
  List<dynamic> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> fetchingBeneficiaryFailureOrUnit;

  @override
  String toString() {
    return 'BeneficiaryState(fetchingList: $fetchingList, usersList: $usersList, fetchingBeneficiaryFailureOrUnit: $fetchingBeneficiaryFailureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryStateImpl &&
            (identical(other.fetchingList, fetchingList) ||
                other.fetchingList == fetchingList) &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList) &&
            (identical(other.fetchingBeneficiaryFailureOrUnit,
                    fetchingBeneficiaryFailureOrUnit) ||
                other.fetchingBeneficiaryFailureOrUnit ==
                    fetchingBeneficiaryFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fetchingList,
      const DeepCollectionEquality().hash(_usersList),
      fetchingBeneficiaryFailureOrUnit);

  /// Create a copy of BeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryStateImplCopyWith<_$BeneficiaryStateImpl> get copyWith =>
      __$$BeneficiaryStateImplCopyWithImpl<_$BeneficiaryStateImpl>(
          this, _$identity);
}

abstract class _BeneficiaryState implements BeneficiaryState {
  const factory _BeneficiaryState(
      {final bool fetchingList,
      final List<dynamic> usersList,
      final Option<Either<Failure, Unit>>
          fetchingBeneficiaryFailureOrUnit}) = _$BeneficiaryStateImpl;

  @override
  bool get fetchingList;
  @override
  List<dynamic> get usersList;
  @override
  Option<Either<Failure, Unit>> get fetchingBeneficiaryFailureOrUnit;

  /// Create a copy of BeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeneficiaryStateImplCopyWith<_$BeneficiaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
