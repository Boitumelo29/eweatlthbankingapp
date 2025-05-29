// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadUser value) loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadUser value)? loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadUser value)? loadUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res, $Val extends UserProfileEvent>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileEvent
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
    extends _$UserProfileEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserProfileEvent.started()';
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
    required TResult Function() loadUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadUser,
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
    required TResult Function(LoadUser value) loadUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadUser value)? loadUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadUser value)? loadUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadUserImplCopyWith<$Res> {
  factory _$$LoadUserImplCopyWith(
          _$LoadUserImpl value, $Res Function(_$LoadUserImpl) then) =
      __$$LoadUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$LoadUserImpl>
    implements _$$LoadUserImplCopyWith<$Res> {
  __$$LoadUserImplCopyWithImpl(
      _$LoadUserImpl _value, $Res Function(_$LoadUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUserImpl implements LoadUser {
  const _$LoadUserImpl();

  @override
  String toString() {
    return 'UserProfileEvent.loadUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadUser,
  }) {
    return loadUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadUser,
  }) {
    return loadUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadUser value) loadUser,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadUser value)? loadUser,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadUser value)? loadUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class LoadUser implements UserProfileEvent {
  const factory LoadUser() = _$LoadUserImpl;
}

/// @nodoc
mixin _$UserProfileState {
  String get userName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get cellNumber => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool get updateIsLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get updateProfileFailureFailureOrUnit =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
  @useResult
  $Res call(
      {String userName,
      String accountNumber,
      String cellNumber,
      String id,
      bool updateIsLoading,
      Option<Either<Failure, Unit>> updateProfileFailureFailureOrUnit});
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? accountNumber = null,
    Object? cellNumber = null,
    Object? id = null,
    Object? updateIsLoading = null,
    Object? updateProfileFailureFailureOrUnit = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cellNumber: null == cellNumber
          ? _value.cellNumber
          : cellNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updateIsLoading: null == updateIsLoading
          ? _value.updateIsLoading
          : updateIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      updateProfileFailureFailureOrUnit: null ==
              updateProfileFailureFailureOrUnit
          ? _value.updateProfileFailureFailureOrUnit
          : updateProfileFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileStateImplCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$$UserProfileStateImplCopyWith(_$UserProfileStateImpl value,
          $Res Function(_$UserProfileStateImpl) then) =
      __$$UserProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String accountNumber,
      String cellNumber,
      String id,
      bool updateIsLoading,
      Option<Either<Failure, Unit>> updateProfileFailureFailureOrUnit});
}

/// @nodoc
class __$$UserProfileStateImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileStateImpl>
    implements _$$UserProfileStateImplCopyWith<$Res> {
  __$$UserProfileStateImplCopyWithImpl(_$UserProfileStateImpl _value,
      $Res Function(_$UserProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? accountNumber = null,
    Object? cellNumber = null,
    Object? id = null,
    Object? updateIsLoading = null,
    Object? updateProfileFailureFailureOrUnit = null,
  }) {
    return _then(_$UserProfileStateImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cellNumber: null == cellNumber
          ? _value.cellNumber
          : cellNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updateIsLoading: null == updateIsLoading
          ? _value.updateIsLoading
          : updateIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      updateProfileFailureFailureOrUnit: null ==
              updateProfileFailureFailureOrUnit
          ? _value.updateProfileFailureFailureOrUnit
          : updateProfileFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$UserProfileStateImpl implements _UserProfileState {
  const _$UserProfileStateImpl(
      {this.userName = "",
      this.accountNumber = "",
      this.cellNumber = "",
      this.id = "",
      this.updateIsLoading = false,
      this.updateProfileFailureFailureOrUnit = const None()});

  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String accountNumber;
  @override
  @JsonKey()
  final String cellNumber;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final bool updateIsLoading;
  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> updateProfileFailureFailureOrUnit;

  @override
  String toString() {
    return 'UserProfileState(userName: $userName, accountNumber: $accountNumber, cellNumber: $cellNumber, id: $id, updateIsLoading: $updateIsLoading, updateProfileFailureFailureOrUnit: $updateProfileFailureFailureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.cellNumber, cellNumber) ||
                other.cellNumber == cellNumber) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updateIsLoading, updateIsLoading) ||
                other.updateIsLoading == updateIsLoading) &&
            (identical(other.updateProfileFailureFailureOrUnit,
                    updateProfileFailureFailureOrUnit) ||
                other.updateProfileFailureFailureOrUnit ==
                    updateProfileFailureFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, accountNumber,
      cellNumber, id, updateIsLoading, updateProfileFailureFailureOrUnit);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      __$$UserProfileStateImplCopyWithImpl<_$UserProfileStateImpl>(
          this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  const factory _UserProfileState(
      {final String userName,
      final String accountNumber,
      final String cellNumber,
      final String id,
      final bool updateIsLoading,
      final Option<Either<Failure, Unit>>
          updateProfileFailureFailureOrUnit}) = _$UserProfileStateImpl;

  @override
  String get userName;
  @override
  String get accountNumber;
  @override
  String get cellNumber;
  @override
  String get id;
  @override
  bool get updateIsLoading;
  @override
  Option<Either<Failure, Unit>> get updateProfileFailureFailureOrUnit;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
