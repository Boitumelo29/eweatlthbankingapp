// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() loadDeposit,
    required TResult Function() loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? loadDeposit,
    TResult? Function()? loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? loadDeposit,
    TResult Function()? loadUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOut value) logout,
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(LoadUser value) loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOut value)? logout,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(LoadUser value)? loadUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOut value)? logout,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(LoadUser value)? loadUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutImpl implements LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'HomeEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() loadDeposit,
    required TResult Function() loadUser,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? loadDeposit,
    TResult? Function()? loadUser,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? loadDeposit,
    TResult Function()? loadUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOut value) logout,
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(LoadUser value) loadUser,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOut value)? logout,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(LoadUser value)? loadUser,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOut value)? logout,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(LoadUser value)? loadUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogOut implements HomeEvent {
  const factory LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$LoadDepositImplCopyWith<$Res> {
  factory _$$LoadDepositImplCopyWith(
          _$LoadDepositImpl value, $Res Function(_$LoadDepositImpl) then) =
      __$$LoadDepositImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDepositImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadDepositImpl>
    implements _$$LoadDepositImplCopyWith<$Res> {
  __$$LoadDepositImplCopyWithImpl(
      _$LoadDepositImpl _value, $Res Function(_$LoadDepositImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDepositImpl implements LoadDeposit {
  const _$LoadDepositImpl();

  @override
  String toString() {
    return 'HomeEvent.loadDeposit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDepositImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() loadDeposit,
    required TResult Function() loadUser,
  }) {
    return loadDeposit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? loadDeposit,
    TResult? Function()? loadUser,
  }) {
    return loadDeposit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? loadDeposit,
    TResult Function()? loadUser,
    required TResult orElse(),
  }) {
    if (loadDeposit != null) {
      return loadDeposit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOut value) logout,
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(LoadUser value) loadUser,
  }) {
    return loadDeposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOut value)? logout,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(LoadUser value)? loadUser,
  }) {
    return loadDeposit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOut value)? logout,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(LoadUser value)? loadUser,
    required TResult orElse(),
  }) {
    if (loadDeposit != null) {
      return loadDeposit(this);
    }
    return orElse();
  }
}

abstract class LoadDeposit implements HomeEvent {
  const factory LoadDeposit() = _$LoadDepositImpl;
}

/// @nodoc
abstract class _$$LoadUserImplCopyWith<$Res> {
  factory _$$LoadUserImplCopyWith(
          _$LoadUserImpl value, $Res Function(_$LoadUserImpl) then) =
      __$$LoadUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadUserImpl>
    implements _$$LoadUserImplCopyWith<$Res> {
  __$$LoadUserImplCopyWithImpl(
      _$LoadUserImpl _value, $Res Function(_$LoadUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUserImpl implements LoadUser {
  const _$LoadUserImpl();

  @override
  String toString() {
    return 'HomeEvent.loadUser()';
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
    required TResult Function() logout,
    required TResult Function() loadDeposit,
    required TResult Function() loadUser,
  }) {
    return loadUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? loadDeposit,
    TResult? Function()? loadUser,
  }) {
    return loadUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? loadDeposit,
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
    required TResult Function(LogOut value) logout,
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(LoadUser value) loadUser,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOut value)? logout,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(LoadUser value)? loadUser,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOut value)? logout,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(LoadUser value)? loadUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class LoadUser implements HomeEvent {
  const factory LoadUser() = _$LoadUserImpl;
}

/// @nodoc
mixin _$HomeState {
  int get depositAmount => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get transactions =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get logoutFailureFailureOrUnit =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int depositAmount,
      List<Map<String, dynamic>> transactions,
      Option<Either<Failure, Unit>> logoutFailureFailureOrUnit});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depositAmount = null,
    Object? transactions = null,
    Object? logoutFailureFailureOrUnit = null,
  }) {
    return _then(_value.copyWith(
      depositAmount: null == depositAmount
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as int,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      logoutFailureFailureOrUnit: null == logoutFailureFailureOrUnit
          ? _value.logoutFailureFailureOrUnit
          : logoutFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int depositAmount,
      List<Map<String, dynamic>> transactions,
      Option<Either<Failure, Unit>> logoutFailureFailureOrUnit});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depositAmount = null,
    Object? transactions = null,
    Object? logoutFailureFailureOrUnit = null,
  }) {
    return _then(_$HomeStateImpl(
      depositAmount: null == depositAmount
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as int,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      logoutFailureFailureOrUnit: null == logoutFailureFailureOrUnit
          ? _value.logoutFailureFailureOrUnit
          : logoutFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.depositAmount,
      required final List<Map<String, dynamic>> transactions,
      this.logoutFailureFailureOrUnit = const None()})
      : _transactions = transactions;

  @override
  final int depositAmount;
  final List<Map<String, dynamic>> _transactions;
  @override
  List<Map<String, dynamic>> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> logoutFailureFailureOrUnit;

  @override
  String toString() {
    return 'HomeState(depositAmount: $depositAmount, transactions: $transactions, logoutFailureFailureOrUnit: $logoutFailureFailureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.depositAmount, depositAmount) ||
                other.depositAmount == depositAmount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.logoutFailureFailureOrUnit,
                    logoutFailureFailureOrUnit) ||
                other.logoutFailureFailureOrUnit ==
                    logoutFailureFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      depositAmount,
      const DeepCollectionEquality().hash(_transactions),
      logoutFailureFailureOrUnit);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {required final int depositAmount,
          required final List<Map<String, dynamic>> transactions,
          final Option<Either<Failure, Unit>> logoutFailureFailureOrUnit}) =
      _$HomeStateImpl;

  @override
  int get depositAmount;
  @override
  List<Map<String, dynamic>> get transactions;
  @override
  Option<Either<Failure, Unit>> get logoutFailureFailureOrUnit;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
