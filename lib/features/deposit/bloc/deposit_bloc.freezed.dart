// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepositEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String amount) depositAmount,
    required TResult Function() loadUser,
    required TResult Function(String voucher) redeemVoucher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String amount)? depositAmount,
    TResult? Function()? loadUser,
    TResult? Function(String voucher)? redeemVoucher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String amount)? depositAmount,
    TResult Function()? loadUser,
    TResult Function(String voucher)? redeemVoucher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DepositAmount value) depositAmount,
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(RedeemVoucher value) redeemVoucher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DepositAmount value)? depositAmount,
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(RedeemVoucher value)? redeemVoucher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DepositAmount value)? depositAmount,
    TResult Function(LoadUser value)? loadUser,
    TResult Function(RedeemVoucher value)? redeemVoucher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositEventCopyWith<$Res> {
  factory $DepositEventCopyWith(
          DepositEvent value, $Res Function(DepositEvent) then) =
      _$DepositEventCopyWithImpl<$Res, DepositEvent>;
}

/// @nodoc
class _$DepositEventCopyWithImpl<$Res, $Val extends DepositEvent>
    implements $DepositEventCopyWith<$Res> {
  _$DepositEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepositEvent
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
    extends _$DepositEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DepositEvent.started()';
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
    required TResult Function(String amount) depositAmount,
    required TResult Function() loadUser,
    required TResult Function(String voucher) redeemVoucher,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String amount)? depositAmount,
    TResult? Function()? loadUser,
    TResult? Function(String voucher)? redeemVoucher,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String amount)? depositAmount,
    TResult Function()? loadUser,
    TResult Function(String voucher)? redeemVoucher,
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
    required TResult Function(DepositAmount value) depositAmount,
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(RedeemVoucher value) redeemVoucher,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DepositAmount value)? depositAmount,
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(RedeemVoucher value)? redeemVoucher,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DepositAmount value)? depositAmount,
    TResult Function(LoadUser value)? loadUser,
    TResult Function(RedeemVoucher value)? redeemVoucher,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DepositEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DepositAmountImplCopyWith<$Res> {
  factory _$$DepositAmountImplCopyWith(
          _$DepositAmountImpl value, $Res Function(_$DepositAmountImpl) then) =
      __$$DepositAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$DepositAmountImplCopyWithImpl<$Res>
    extends _$DepositEventCopyWithImpl<$Res, _$DepositAmountImpl>
    implements _$$DepositAmountImplCopyWith<$Res> {
  __$$DepositAmountImplCopyWithImpl(
      _$DepositAmountImpl _value, $Res Function(_$DepositAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$DepositAmountImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DepositAmountImpl implements DepositAmount {
  const _$DepositAmountImpl({required this.amount});

  @override
  final String amount;

  @override
  String toString() {
    return 'DepositEvent.depositAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositAmountImplCopyWith<_$DepositAmountImpl> get copyWith =>
      __$$DepositAmountImplCopyWithImpl<_$DepositAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String amount) depositAmount,
    required TResult Function() loadUser,
    required TResult Function(String voucher) redeemVoucher,
  }) {
    return depositAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String amount)? depositAmount,
    TResult? Function()? loadUser,
    TResult? Function(String voucher)? redeemVoucher,
  }) {
    return depositAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String amount)? depositAmount,
    TResult Function()? loadUser,
    TResult Function(String voucher)? redeemVoucher,
    required TResult orElse(),
  }) {
    if (depositAmount != null) {
      return depositAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DepositAmount value) depositAmount,
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(RedeemVoucher value) redeemVoucher,
  }) {
    return depositAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DepositAmount value)? depositAmount,
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(RedeemVoucher value)? redeemVoucher,
  }) {
    return depositAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DepositAmount value)? depositAmount,
    TResult Function(LoadUser value)? loadUser,
    TResult Function(RedeemVoucher value)? redeemVoucher,
    required TResult orElse(),
  }) {
    if (depositAmount != null) {
      return depositAmount(this);
    }
    return orElse();
  }
}

abstract class DepositAmount implements DepositEvent {
  const factory DepositAmount({required final String amount}) =
      _$DepositAmountImpl;

  String get amount;

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepositAmountImplCopyWith<_$DepositAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUserImplCopyWith<$Res> {
  factory _$$LoadUserImplCopyWith(
          _$LoadUserImpl value, $Res Function(_$LoadUserImpl) then) =
      __$$LoadUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserImplCopyWithImpl<$Res>
    extends _$DepositEventCopyWithImpl<$Res, _$LoadUserImpl>
    implements _$$LoadUserImplCopyWith<$Res> {
  __$$LoadUserImplCopyWithImpl(
      _$LoadUserImpl _value, $Res Function(_$LoadUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUserImpl implements LoadUser {
  const _$LoadUserImpl();

  @override
  String toString() {
    return 'DepositEvent.loadUser()';
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
    required TResult Function(String amount) depositAmount,
    required TResult Function() loadUser,
    required TResult Function(String voucher) redeemVoucher,
  }) {
    return loadUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String amount)? depositAmount,
    TResult? Function()? loadUser,
    TResult? Function(String voucher)? redeemVoucher,
  }) {
    return loadUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String amount)? depositAmount,
    TResult Function()? loadUser,
    TResult Function(String voucher)? redeemVoucher,
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
    required TResult Function(DepositAmount value) depositAmount,
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(RedeemVoucher value) redeemVoucher,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DepositAmount value)? depositAmount,
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(RedeemVoucher value)? redeemVoucher,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DepositAmount value)? depositAmount,
    TResult Function(LoadUser value)? loadUser,
    TResult Function(RedeemVoucher value)? redeemVoucher,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class LoadUser implements DepositEvent {
  const factory LoadUser() = _$LoadUserImpl;
}

/// @nodoc
abstract class _$$RedeemVoucherImplCopyWith<$Res> {
  factory _$$RedeemVoucherImplCopyWith(
          _$RedeemVoucherImpl value, $Res Function(_$RedeemVoucherImpl) then) =
      __$$RedeemVoucherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String voucher});
}

/// @nodoc
class __$$RedeemVoucherImplCopyWithImpl<$Res>
    extends _$DepositEventCopyWithImpl<$Res, _$RedeemVoucherImpl>
    implements _$$RedeemVoucherImplCopyWith<$Res> {
  __$$RedeemVoucherImplCopyWithImpl(
      _$RedeemVoucherImpl _value, $Res Function(_$RedeemVoucherImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucher = null,
  }) {
    return _then(_$RedeemVoucherImpl(
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RedeemVoucherImpl implements RedeemVoucher {
  const _$RedeemVoucherImpl({required this.voucher});

  @override
  final String voucher;

  @override
  String toString() {
    return 'DepositEvent.redeemVoucher(voucher: $voucher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedeemVoucherImpl &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucher);

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedeemVoucherImplCopyWith<_$RedeemVoucherImpl> get copyWith =>
      __$$RedeemVoucherImplCopyWithImpl<_$RedeemVoucherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String amount) depositAmount,
    required TResult Function() loadUser,
    required TResult Function(String voucher) redeemVoucher,
  }) {
    return redeemVoucher(voucher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String amount)? depositAmount,
    TResult? Function()? loadUser,
    TResult? Function(String voucher)? redeemVoucher,
  }) {
    return redeemVoucher?.call(voucher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String amount)? depositAmount,
    TResult Function()? loadUser,
    TResult Function(String voucher)? redeemVoucher,
    required TResult orElse(),
  }) {
    if (redeemVoucher != null) {
      return redeemVoucher(voucher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DepositAmount value) depositAmount,
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(RedeemVoucher value) redeemVoucher,
  }) {
    return redeemVoucher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DepositAmount value)? depositAmount,
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(RedeemVoucher value)? redeemVoucher,
  }) {
    return redeemVoucher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DepositAmount value)? depositAmount,
    TResult Function(LoadUser value)? loadUser,
    TResult Function(RedeemVoucher value)? redeemVoucher,
    required TResult orElse(),
  }) {
    if (redeemVoucher != null) {
      return redeemVoucher(this);
    }
    return orElse();
  }
}

abstract class RedeemVoucher implements DepositEvent {
  const factory RedeemVoucher({required final String voucher}) =
      _$RedeemVoucherImpl;

  String get voucher;

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedeemVoucherImplCopyWith<_$RedeemVoucherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepositState {
  bool get isLoadingUser => throw _privateConstructorUsedError;
  bool get depositIsLoading => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get redeemedVoucher => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get depositAmountFailureFailureOrUnit =>
      throw _privateConstructorUsedError;

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepositStateCopyWith<DepositState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositStateCopyWith<$Res> {
  factory $DepositStateCopyWith(
          DepositState value, $Res Function(DepositState) then) =
      _$DepositStateCopyWithImpl<$Res, DepositState>;
  @useResult
  $Res call(
      {bool isLoadingUser,
      bool depositIsLoading,
      String? userName,
      String? redeemedVoucher,
      String? accountNumber,
      String? errorMessage,
      Option<Either<Failure, Unit>> depositAmountFailureFailureOrUnit});
}

/// @nodoc
class _$DepositStateCopyWithImpl<$Res, $Val extends DepositState>
    implements $DepositStateCopyWith<$Res> {
  _$DepositStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingUser = null,
    Object? depositIsLoading = null,
    Object? userName = freezed,
    Object? redeemedVoucher = freezed,
    Object? accountNumber = freezed,
    Object? errorMessage = freezed,
    Object? depositAmountFailureFailureOrUnit = null,
  }) {
    return _then(_value.copyWith(
      isLoadingUser: null == isLoadingUser
          ? _value.isLoadingUser
          : isLoadingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      depositIsLoading: null == depositIsLoading
          ? _value.depositIsLoading
          : depositIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemedVoucher: freezed == redeemedVoucher
          ? _value.redeemedVoucher
          : redeemedVoucher // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAmountFailureFailureOrUnit: null ==
              depositAmountFailureFailureOrUnit
          ? _value.depositAmountFailureFailureOrUnit
          : depositAmountFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepositStateImplCopyWith<$Res>
    implements $DepositStateCopyWith<$Res> {
  factory _$$DepositStateImplCopyWith(
          _$DepositStateImpl value, $Res Function(_$DepositStateImpl) then) =
      __$$DepositStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingUser,
      bool depositIsLoading,
      String? userName,
      String? redeemedVoucher,
      String? accountNumber,
      String? errorMessage,
      Option<Either<Failure, Unit>> depositAmountFailureFailureOrUnit});
}

/// @nodoc
class __$$DepositStateImplCopyWithImpl<$Res>
    extends _$DepositStateCopyWithImpl<$Res, _$DepositStateImpl>
    implements _$$DepositStateImplCopyWith<$Res> {
  __$$DepositStateImplCopyWithImpl(
      _$DepositStateImpl _value, $Res Function(_$DepositStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingUser = null,
    Object? depositIsLoading = null,
    Object? userName = freezed,
    Object? redeemedVoucher = freezed,
    Object? accountNumber = freezed,
    Object? errorMessage = freezed,
    Object? depositAmountFailureFailureOrUnit = null,
  }) {
    return _then(_$DepositStateImpl(
      isLoadingUser: null == isLoadingUser
          ? _value.isLoadingUser
          : isLoadingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      depositIsLoading: null == depositIsLoading
          ? _value.depositIsLoading
          : depositIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemedVoucher: freezed == redeemedVoucher
          ? _value.redeemedVoucher
          : redeemedVoucher // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAmountFailureFailureOrUnit: null ==
              depositAmountFailureFailureOrUnit
          ? _value.depositAmountFailureFailureOrUnit
          : depositAmountFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$DepositStateImpl implements _DepositState {
  const _$DepositStateImpl(
      {required this.isLoadingUser,
      this.depositIsLoading = false,
      this.userName,
      this.redeemedVoucher,
      this.accountNumber,
      this.errorMessage,
      this.depositAmountFailureFailureOrUnit = const None()});

  @override
  final bool isLoadingUser;
  @override
  @JsonKey()
  final bool depositIsLoading;
  @override
  final String? userName;
  @override
  final String? redeemedVoucher;
  @override
  final String? accountNumber;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> depositAmountFailureFailureOrUnit;

  @override
  String toString() {
    return 'DepositState(isLoadingUser: $isLoadingUser, depositIsLoading: $depositIsLoading, userName: $userName, redeemedVoucher: $redeemedVoucher, accountNumber: $accountNumber, errorMessage: $errorMessage, depositAmountFailureFailureOrUnit: $depositAmountFailureFailureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositStateImpl &&
            (identical(other.isLoadingUser, isLoadingUser) ||
                other.isLoadingUser == isLoadingUser) &&
            (identical(other.depositIsLoading, depositIsLoading) ||
                other.depositIsLoading == depositIsLoading) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.redeemedVoucher, redeemedVoucher) ||
                other.redeemedVoucher == redeemedVoucher) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.depositAmountFailureFailureOrUnit,
                    depositAmountFailureFailureOrUnit) ||
                other.depositAmountFailureFailureOrUnit ==
                    depositAmountFailureFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingUser,
      depositIsLoading,
      userName,
      redeemedVoucher,
      accountNumber,
      errorMessage,
      depositAmountFailureFailureOrUnit);

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositStateImplCopyWith<_$DepositStateImpl> get copyWith =>
      __$$DepositStateImplCopyWithImpl<_$DepositStateImpl>(this, _$identity);
}

abstract class _DepositState implements DepositState {
  const factory _DepositState(
      {required final bool isLoadingUser,
      final bool depositIsLoading,
      final String? userName,
      final String? redeemedVoucher,
      final String? accountNumber,
      final String? errorMessage,
      final Option<Either<Failure, Unit>>
          depositAmountFailureFailureOrUnit}) = _$DepositStateImpl;

  @override
  bool get isLoadingUser;
  @override
  bool get depositIsLoading;
  @override
  String? get userName;
  @override
  String? get redeemedVoucher;
  @override
  String? get accountNumber;
  @override
  String? get errorMessage;
  @override
  Option<Either<Failure, Unit>> get depositAmountFailureFailureOrUnit;

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepositStateImplCopyWith<_$DepositStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
