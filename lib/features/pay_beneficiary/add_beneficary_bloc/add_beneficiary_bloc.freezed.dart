// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_beneficiary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddBeneficiaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String accountName, String accountNumber, String bank)
        addNewBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String accountName, String accountNumber, String bank)?
        addNewBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountName, String accountNumber, String bank)?
        addNewBeneficiary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddNewBeneficiary value) addNewBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewBeneficiary value)? addNewBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewBeneficiary value)? addNewBeneficiary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBeneficiaryEventCopyWith<$Res> {
  factory $AddBeneficiaryEventCopyWith(
          AddBeneficiaryEvent value, $Res Function(AddBeneficiaryEvent) then) =
      _$AddBeneficiaryEventCopyWithImpl<$Res, AddBeneficiaryEvent>;
}

/// @nodoc
class _$AddBeneficiaryEventCopyWithImpl<$Res, $Val extends AddBeneficiaryEvent>
    implements $AddBeneficiaryEventCopyWith<$Res> {
  _$AddBeneficiaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddBeneficiaryEvent
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
    extends _$AddBeneficiaryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddBeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AddBeneficiaryEvent.started()';
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
    required TResult Function(
            String accountName, String accountNumber, String bank)
        addNewBeneficiary,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String accountName, String accountNumber, String bank)?
        addNewBeneficiary,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountName, String accountNumber, String bank)?
        addNewBeneficiary,
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
    required TResult Function(AddNewBeneficiary value) addNewBeneficiary,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewBeneficiary value)? addNewBeneficiary,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewBeneficiary value)? addNewBeneficiary,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddBeneficiaryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddNewBeneficiaryImplCopyWith<$Res> {
  factory _$$AddNewBeneficiaryImplCopyWith(_$AddNewBeneficiaryImpl value,
          $Res Function(_$AddNewBeneficiaryImpl) then) =
      __$$AddNewBeneficiaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountName, String accountNumber, String bank});
}

/// @nodoc
class __$$AddNewBeneficiaryImplCopyWithImpl<$Res>
    extends _$AddBeneficiaryEventCopyWithImpl<$Res, _$AddNewBeneficiaryImpl>
    implements _$$AddNewBeneficiaryImplCopyWith<$Res> {
  __$$AddNewBeneficiaryImplCopyWithImpl(_$AddNewBeneficiaryImpl _value,
      $Res Function(_$AddNewBeneficiaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddBeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? accountNumber = null,
    Object? bank = null,
  }) {
    return _then(_$AddNewBeneficiaryImpl(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNewBeneficiaryImpl implements AddNewBeneficiary {
  const _$AddNewBeneficiaryImpl(
      {required this.accountName,
      required this.accountNumber,
      required this.bank});

  @override
  final String accountName;
  @override
  final String accountNumber;
  @override
  final String bank;

  @override
  String toString() {
    return 'AddBeneficiaryEvent.addNewBeneficiary(accountName: $accountName, accountNumber: $accountNumber, bank: $bank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewBeneficiaryImpl &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.bank, bank) || other.bank == bank));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accountName, accountNumber, bank);

  /// Create a copy of AddBeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewBeneficiaryImplCopyWith<_$AddNewBeneficiaryImpl> get copyWith =>
      __$$AddNewBeneficiaryImplCopyWithImpl<_$AddNewBeneficiaryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String accountName, String accountNumber, String bank)
        addNewBeneficiary,
  }) {
    return addNewBeneficiary(accountName, accountNumber, bank);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String accountName, String accountNumber, String bank)?
        addNewBeneficiary,
  }) {
    return addNewBeneficiary?.call(accountName, accountNumber, bank);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountName, String accountNumber, String bank)?
        addNewBeneficiary,
    required TResult orElse(),
  }) {
    if (addNewBeneficiary != null) {
      return addNewBeneficiary(accountName, accountNumber, bank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddNewBeneficiary value) addNewBeneficiary,
  }) {
    return addNewBeneficiary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewBeneficiary value)? addNewBeneficiary,
  }) {
    return addNewBeneficiary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewBeneficiary value)? addNewBeneficiary,
    required TResult orElse(),
  }) {
    if (addNewBeneficiary != null) {
      return addNewBeneficiary(this);
    }
    return orElse();
  }
}

abstract class AddNewBeneficiary implements AddBeneficiaryEvent {
  const factory AddNewBeneficiary(
      {required final String accountName,
      required final String accountNumber,
      required final String bank}) = _$AddNewBeneficiaryImpl;

  String get accountName;
  String get accountNumber;
  String get bank;

  /// Create a copy of AddBeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNewBeneficiaryImplCopyWith<_$AddNewBeneficiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddBeneficiaryState {
  bool get addingIsLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get addingBeneficiaryFailureOrUnit =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddBeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddBeneficiaryStateCopyWith<AddBeneficiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBeneficiaryStateCopyWith<$Res> {
  factory $AddBeneficiaryStateCopyWith(
          AddBeneficiaryState value, $Res Function(AddBeneficiaryState) then) =
      _$AddBeneficiaryStateCopyWithImpl<$Res, AddBeneficiaryState>;
  @useResult
  $Res call(
      {bool addingIsLoading,
      Option<Either<Failure, Unit>> addingBeneficiaryFailureOrUnit});
}

/// @nodoc
class _$AddBeneficiaryStateCopyWithImpl<$Res, $Val extends AddBeneficiaryState>
    implements $AddBeneficiaryStateCopyWith<$Res> {
  _$AddBeneficiaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddBeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addingIsLoading = null,
    Object? addingBeneficiaryFailureOrUnit = null,
  }) {
    return _then(_value.copyWith(
      addingIsLoading: null == addingIsLoading
          ? _value.addingIsLoading
          : addingIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addingBeneficiaryFailureOrUnit: null == addingBeneficiaryFailureOrUnit
          ? _value.addingBeneficiaryFailureOrUnit
          : addingBeneficiaryFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBeneficiaryStateImplCopyWith<$Res>
    implements $AddBeneficiaryStateCopyWith<$Res> {
  factory _$$AddBeneficiaryStateImplCopyWith(_$AddBeneficiaryStateImpl value,
          $Res Function(_$AddBeneficiaryStateImpl) then) =
      __$$AddBeneficiaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool addingIsLoading,
      Option<Either<Failure, Unit>> addingBeneficiaryFailureOrUnit});
}

/// @nodoc
class __$$AddBeneficiaryStateImplCopyWithImpl<$Res>
    extends _$AddBeneficiaryStateCopyWithImpl<$Res, _$AddBeneficiaryStateImpl>
    implements _$$AddBeneficiaryStateImplCopyWith<$Res> {
  __$$AddBeneficiaryStateImplCopyWithImpl(_$AddBeneficiaryStateImpl _value,
      $Res Function(_$AddBeneficiaryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddBeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addingIsLoading = null,
    Object? addingBeneficiaryFailureOrUnit = null,
  }) {
    return _then(_$AddBeneficiaryStateImpl(
      addingIsLoading: null == addingIsLoading
          ? _value.addingIsLoading
          : addingIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addingBeneficiaryFailureOrUnit: null == addingBeneficiaryFailureOrUnit
          ? _value.addingBeneficiaryFailureOrUnit
          : addingBeneficiaryFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AddBeneficiaryStateImpl implements _AddBeneficiaryState {
  const _$AddBeneficiaryStateImpl(
      {this.addingIsLoading = false,
      this.addingBeneficiaryFailureOrUnit = const None()});

  @override
  @JsonKey()
  final bool addingIsLoading;
  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> addingBeneficiaryFailureOrUnit;

  @override
  String toString() {
    return 'AddBeneficiaryState(addingIsLoading: $addingIsLoading, addingBeneficiaryFailureOrUnit: $addingBeneficiaryFailureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBeneficiaryStateImpl &&
            (identical(other.addingIsLoading, addingIsLoading) ||
                other.addingIsLoading == addingIsLoading) &&
            (identical(other.addingBeneficiaryFailureOrUnit,
                    addingBeneficiaryFailureOrUnit) ||
                other.addingBeneficiaryFailureOrUnit ==
                    addingBeneficiaryFailureOrUnit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, addingIsLoading, addingBeneficiaryFailureOrUnit);

  /// Create a copy of AddBeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBeneficiaryStateImplCopyWith<_$AddBeneficiaryStateImpl> get copyWith =>
      __$$AddBeneficiaryStateImplCopyWithImpl<_$AddBeneficiaryStateImpl>(
          this, _$identity);
}

abstract class _AddBeneficiaryState implements AddBeneficiaryState {
  const factory _AddBeneficiaryState(
          {final bool addingIsLoading,
          final Option<Either<Failure, Unit>> addingBeneficiaryFailureOrUnit}) =
      _$AddBeneficiaryStateImpl;

  @override
  bool get addingIsLoading;
  @override
  Option<Either<Failure, Unit>> get addingBeneficiaryFailureOrUnit;

  /// Create a copy of AddBeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBeneficiaryStateImplCopyWith<_$AddBeneficiaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
