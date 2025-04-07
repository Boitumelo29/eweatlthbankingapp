// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadDeposit,
    required TResult Function(
            String selectedBank, String accountName, String amount)
        processTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDeposit,
    TResult? Function(String selectedBank, String accountName, String amount)?
        processTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDeposit,
    TResult Function(String selectedBank, String accountName, String amount)?
        processTransfer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(ProcessTransfer value) processTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(ProcessTransfer value)? processTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(ProcessTransfer value)? processTransfer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferEventCopyWith<$Res> {
  factory $TransferEventCopyWith(
          TransferEvent value, $Res Function(TransferEvent) then) =
      _$TransferEventCopyWithImpl<$Res, TransferEvent>;
}

/// @nodoc
class _$TransferEventCopyWithImpl<$Res, $Val extends TransferEvent>
    implements $TransferEventCopyWith<$Res> {
  _$TransferEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferEvent
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
    extends _$TransferEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TransferEvent.started()';
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
    required TResult Function() loadDeposit,
    required TResult Function(
            String selectedBank, String accountName, String amount)
        processTransfer,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDeposit,
    TResult? Function(String selectedBank, String accountName, String amount)?
        processTransfer,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDeposit,
    TResult Function(String selectedBank, String accountName, String amount)?
        processTransfer,
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
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(ProcessTransfer value) processTransfer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(ProcessTransfer value)? processTransfer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(ProcessTransfer value)? processTransfer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransferEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadDepositImplCopyWith<$Res> {
  factory _$$LoadDepositImplCopyWith(
          _$LoadDepositImpl value, $Res Function(_$LoadDepositImpl) then) =
      __$$LoadDepositImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDepositImplCopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res, _$LoadDepositImpl>
    implements _$$LoadDepositImplCopyWith<$Res> {
  __$$LoadDepositImplCopyWithImpl(
      _$LoadDepositImpl _value, $Res Function(_$LoadDepositImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDepositImpl implements LoadDeposit {
  const _$LoadDepositImpl();

  @override
  String toString() {
    return 'TransferEvent.loadDeposit()';
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
    required TResult Function() started,
    required TResult Function() loadDeposit,
    required TResult Function(
            String selectedBank, String accountName, String amount)
        processTransfer,
  }) {
    return loadDeposit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDeposit,
    TResult? Function(String selectedBank, String accountName, String amount)?
        processTransfer,
  }) {
    return loadDeposit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDeposit,
    TResult Function(String selectedBank, String accountName, String amount)?
        processTransfer,
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
    required TResult Function(_Started value) started,
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(ProcessTransfer value) processTransfer,
  }) {
    return loadDeposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(ProcessTransfer value)? processTransfer,
  }) {
    return loadDeposit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(ProcessTransfer value)? processTransfer,
    required TResult orElse(),
  }) {
    if (loadDeposit != null) {
      return loadDeposit(this);
    }
    return orElse();
  }
}

abstract class LoadDeposit implements TransferEvent {
  const factory LoadDeposit() = _$LoadDepositImpl;
}

/// @nodoc
abstract class _$$ProcessTransferImplCopyWith<$Res> {
  factory _$$ProcessTransferImplCopyWith(_$ProcessTransferImpl value,
          $Res Function(_$ProcessTransferImpl) then) =
      __$$ProcessTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedBank, String accountName, String amount});
}

/// @nodoc
class __$$ProcessTransferImplCopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res, _$ProcessTransferImpl>
    implements _$$ProcessTransferImplCopyWith<$Res> {
  __$$ProcessTransferImplCopyWithImpl(
      _$ProcessTransferImpl _value, $Res Function(_$ProcessTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBank = null,
    Object? accountName = null,
    Object? amount = null,
  }) {
    return _then(_$ProcessTransferImpl(
      selectedBank: null == selectedBank
          ? _value.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessTransferImpl implements ProcessTransfer {
  const _$ProcessTransferImpl(
      {required this.selectedBank,
      required this.accountName,
      required this.amount});

  @override
  final String selectedBank;
  @override
  final String accountName;
  @override
  final String amount;

  @override
  String toString() {
    return 'TransferEvent.processTransfer(selectedBank: $selectedBank, accountName: $accountName, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessTransferImpl &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedBank, accountName, amount);

  /// Create a copy of TransferEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessTransferImplCopyWith<_$ProcessTransferImpl> get copyWith =>
      __$$ProcessTransferImplCopyWithImpl<_$ProcessTransferImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadDeposit,
    required TResult Function(
            String selectedBank, String accountName, String amount)
        processTransfer,
  }) {
    return processTransfer(selectedBank, accountName, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDeposit,
    TResult? Function(String selectedBank, String accountName, String amount)?
        processTransfer,
  }) {
    return processTransfer?.call(selectedBank, accountName, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDeposit,
    TResult Function(String selectedBank, String accountName, String amount)?
        processTransfer,
    required TResult orElse(),
  }) {
    if (processTransfer != null) {
      return processTransfer(selectedBank, accountName, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadDeposit value) loadDeposit,
    required TResult Function(ProcessTransfer value) processTransfer,
  }) {
    return processTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadDeposit value)? loadDeposit,
    TResult? Function(ProcessTransfer value)? processTransfer,
  }) {
    return processTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadDeposit value)? loadDeposit,
    TResult Function(ProcessTransfer value)? processTransfer,
    required TResult orElse(),
  }) {
    if (processTransfer != null) {
      return processTransfer(this);
    }
    return orElse();
  }
}

abstract class ProcessTransfer implements TransferEvent {
  const factory ProcessTransfer(
      {required final String selectedBank,
      required final String accountName,
      required final String amount}) = _$ProcessTransferImpl;

  String get selectedBank;
  String get accountName;
  String get amount;

  /// Create a copy of TransferEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessTransferImplCopyWith<_$ProcessTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransferState {
// required bool isLoadingUser,
  bool get transferIsLoading => throw _privateConstructorUsedError;
  int get currentBalance => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get loadAmountFailureFailureOrUnit =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get processTransferFailureFailureOrUnit =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransferStateCopyWith<TransferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferStateCopyWith<$Res> {
  factory $TransferStateCopyWith(
          TransferState value, $Res Function(TransferState) then) =
      _$TransferStateCopyWithImpl<$Res, TransferState>;
  @useResult
  $Res call(
      {bool transferIsLoading,
      int currentBalance,
      Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit,
      Option<Either<Failure, Unit>> processTransferFailureFailureOrUnit});
}

/// @nodoc
class _$TransferStateCopyWithImpl<$Res, $Val extends TransferState>
    implements $TransferStateCopyWith<$Res> {
  _$TransferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transferIsLoading = null,
    Object? currentBalance = null,
    Object? loadAmountFailureFailureOrUnit = null,
    Object? processTransferFailureFailureOrUnit = null,
  }) {
    return _then(_value.copyWith(
      transferIsLoading: null == transferIsLoading
          ? _value.transferIsLoading
          : transferIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as int,
      loadAmountFailureFailureOrUnit: null == loadAmountFailureFailureOrUnit
          ? _value.loadAmountFailureFailureOrUnit
          : loadAmountFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      processTransferFailureFailureOrUnit: null ==
              processTransferFailureFailureOrUnit
          ? _value.processTransferFailureFailureOrUnit
          : processTransferFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferStateImplCopyWith<$Res>
    implements $TransferStateCopyWith<$Res> {
  factory _$$TransferStateImplCopyWith(
          _$TransferStateImpl value, $Res Function(_$TransferStateImpl) then) =
      __$$TransferStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool transferIsLoading,
      int currentBalance,
      Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit,
      Option<Either<Failure, Unit>> processTransferFailureFailureOrUnit});
}

/// @nodoc
class __$$TransferStateImplCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$TransferStateImpl>
    implements _$$TransferStateImplCopyWith<$Res> {
  __$$TransferStateImplCopyWithImpl(
      _$TransferStateImpl _value, $Res Function(_$TransferStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transferIsLoading = null,
    Object? currentBalance = null,
    Object? loadAmountFailureFailureOrUnit = null,
    Object? processTransferFailureFailureOrUnit = null,
  }) {
    return _then(_$TransferStateImpl(
      transferIsLoading: null == transferIsLoading
          ? _value.transferIsLoading
          : transferIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as int,
      loadAmountFailureFailureOrUnit: null == loadAmountFailureFailureOrUnit
          ? _value.loadAmountFailureFailureOrUnit
          : loadAmountFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      processTransferFailureFailureOrUnit: null ==
              processTransferFailureFailureOrUnit
          ? _value.processTransferFailureFailureOrUnit
          : processTransferFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$TransferStateImpl implements _TransferState {
  const _$TransferStateImpl(
      {this.transferIsLoading = false,
      this.currentBalance = 0,
      this.loadAmountFailureFailureOrUnit = const None(),
      this.processTransferFailureFailureOrUnit = const None()});

// required bool isLoadingUser,
  @override
  @JsonKey()
  final bool transferIsLoading;
  @override
  @JsonKey()
  final int currentBalance;
  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit;
  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> processTransferFailureFailureOrUnit;

  @override
  String toString() {
    return 'TransferState(transferIsLoading: $transferIsLoading, currentBalance: $currentBalance, loadAmountFailureFailureOrUnit: $loadAmountFailureFailureOrUnit, processTransferFailureFailureOrUnit: $processTransferFailureFailureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferStateImpl &&
            (identical(other.transferIsLoading, transferIsLoading) ||
                other.transferIsLoading == transferIsLoading) &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.loadAmountFailureFailureOrUnit,
                    loadAmountFailureFailureOrUnit) ||
                other.loadAmountFailureFailureOrUnit ==
                    loadAmountFailureFailureOrUnit) &&
            (identical(other.processTransferFailureFailureOrUnit,
                    processTransferFailureFailureOrUnit) ||
                other.processTransferFailureFailureOrUnit ==
                    processTransferFailureFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transferIsLoading,
      currentBalance,
      loadAmountFailureFailureOrUnit,
      processTransferFailureFailureOrUnit);

  /// Create a copy of TransferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferStateImplCopyWith<_$TransferStateImpl> get copyWith =>
      __$$TransferStateImplCopyWithImpl<_$TransferStateImpl>(this, _$identity);
}

abstract class _TransferState implements TransferState {
  const factory _TransferState(
      {final bool transferIsLoading,
      final int currentBalance,
      final Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit,
      final Option<Either<Failure, Unit>>
          processTransferFailureFailureOrUnit}) = _$TransferStateImpl;

// required bool isLoadingUser,
  @override
  bool get transferIsLoading;
  @override
  int get currentBalance;
  @override
  Option<Either<Failure, Unit>> get loadAmountFailureFailureOrUnit;
  @override
  Option<Either<Failure, Unit>> get processTransferFailureFailureOrUnit;

  /// Create a copy of TransferState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransferStateImplCopyWith<_$TransferStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
