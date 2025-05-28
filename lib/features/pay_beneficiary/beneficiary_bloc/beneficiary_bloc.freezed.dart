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
    required TResult Function() deleteUser,
    required TResult Function() editUser,
    required TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)
        amountTransferred,
    required TResult Function() loadAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
    TResult? Function()? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult? Function()? loadAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    TResult Function()? deleteUser,
    TResult Function()? editUser,
    TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult Function()? loadAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(EditUser value) editUser,
    required TResult Function(AmountTransferred value) amountTransferred,
    required TResult Function(LoadAmount value) loadAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(EditUser value)? editUser,
    TResult? Function(AmountTransferred value)? amountTransferred,
    TResult? Function(LoadAmount value)? loadAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(EditUser value)? editUser,
    TResult Function(AmountTransferred value)? amountTransferred,
    TResult Function(LoadAmount value)? loadAmount,
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
    required TResult Function() deleteUser,
    required TResult Function() editUser,
    required TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)
        amountTransferred,
    required TResult Function() loadAmount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
    TResult? Function()? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult? Function()? loadAmount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    TResult Function()? deleteUser,
    TResult Function()? editUser,
    TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult Function()? loadAmount,
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
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(EditUser value) editUser,
    required TResult Function(AmountTransferred value) amountTransferred,
    required TResult Function(LoadAmount value) loadAmount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(EditUser value)? editUser,
    TResult? Function(AmountTransferred value)? amountTransferred,
    TResult? Function(LoadAmount value)? loadAmount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(EditUser value)? editUser,
    TResult Function(AmountTransferred value)? amountTransferred,
    TResult Function(LoadAmount value)? loadAmount,
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
    required TResult Function() deleteUser,
    required TResult Function() editUser,
    required TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)
        amountTransferred,
    required TResult Function() loadAmount,
  }) {
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
    TResult? Function()? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult? Function()? loadAmount,
  }) {
    return getAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    TResult Function()? deleteUser,
    TResult Function()? editUser,
    TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult Function()? loadAmount,
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
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(EditUser value) editUser,
    required TResult Function(AmountTransferred value) amountTransferred,
    required TResult Function(LoadAmount value) loadAmount,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(EditUser value)? editUser,
    TResult? Function(AmountTransferred value)? amountTransferred,
    TResult? Function(LoadAmount value)? loadAmount,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(EditUser value)? editUser,
    TResult Function(AmountTransferred value)? amountTransferred,
    TResult Function(LoadAmount value)? loadAmount,
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
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
          _$DeleteUserImpl value, $Res Function(_$DeleteUserImpl) then) =
      __$$DeleteUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$BeneficiaryEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
      _$DeleteUserImpl _value, $Res Function(_$DeleteUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteUserImpl implements DeleteUser {
  const _$DeleteUserImpl();

  @override
  String toString() {
    return 'BeneficiaryEvent.deleteUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUsers,
    required TResult Function() deleteUser,
    required TResult Function() editUser,
    required TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)
        amountTransferred,
    required TResult Function() loadAmount,
  }) {
    return deleteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
    TResult? Function()? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult? Function()? loadAmount,
  }) {
    return deleteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    TResult Function()? deleteUser,
    TResult Function()? editUser,
    TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult Function()? loadAmount,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(EditUser value) editUser,
    required TResult Function(AmountTransferred value) amountTransferred,
    required TResult Function(LoadAmount value) loadAmount,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(EditUser value)? editUser,
    TResult? Function(AmountTransferred value)? amountTransferred,
    TResult? Function(LoadAmount value)? loadAmount,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(EditUser value)? editUser,
    TResult Function(AmountTransferred value)? amountTransferred,
    TResult Function(LoadAmount value)? loadAmount,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements BeneficiaryEvent {
  const factory DeleteUser() = _$DeleteUserImpl;
}

/// @nodoc
abstract class _$$EditUserImplCopyWith<$Res> {
  factory _$$EditUserImplCopyWith(
          _$EditUserImpl value, $Res Function(_$EditUserImpl) then) =
      __$$EditUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditUserImplCopyWithImpl<$Res>
    extends _$BeneficiaryEventCopyWithImpl<$Res, _$EditUserImpl>
    implements _$$EditUserImplCopyWith<$Res> {
  __$$EditUserImplCopyWithImpl(
      _$EditUserImpl _value, $Res Function(_$EditUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditUserImpl implements EditUser {
  const _$EditUserImpl();

  @override
  String toString() {
    return 'BeneficiaryEvent.editUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUsers,
    required TResult Function() deleteUser,
    required TResult Function() editUser,
    required TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)
        amountTransferred,
    required TResult Function() loadAmount,
  }) {
    return editUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
    TResult? Function()? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult? Function()? loadAmount,
  }) {
    return editUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    TResult Function()? deleteUser,
    TResult Function()? editUser,
    TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult Function()? loadAmount,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(EditUser value) editUser,
    required TResult Function(AmountTransferred value) amountTransferred,
    required TResult Function(LoadAmount value) loadAmount,
  }) {
    return editUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(EditUser value)? editUser,
    TResult? Function(AmountTransferred value)? amountTransferred,
    TResult? Function(LoadAmount value)? loadAmount,
  }) {
    return editUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(EditUser value)? editUser,
    TResult Function(AmountTransferred value)? amountTransferred,
    TResult Function(LoadAmount value)? loadAmount,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(this);
    }
    return orElse();
  }
}

abstract class EditUser implements BeneficiaryEvent {
  const factory EditUser() = _$EditUserImpl;
}

/// @nodoc
abstract class _$$AmountTransferredImplCopyWith<$Res> {
  factory _$$AmountTransferredImplCopyWith(_$AmountTransferredImpl value,
          $Res Function(_$AmountTransferredImpl) then) =
      __$$AmountTransferredImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String selectedBank,
      String accountName,
      String accountNumber,
      String amount});
}

/// @nodoc
class __$$AmountTransferredImplCopyWithImpl<$Res>
    extends _$BeneficiaryEventCopyWithImpl<$Res, _$AmountTransferredImpl>
    implements _$$AmountTransferredImplCopyWith<$Res> {
  __$$AmountTransferredImplCopyWithImpl(_$AmountTransferredImpl _value,
      $Res Function(_$AmountTransferredImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBank = null,
    Object? accountName = null,
    Object? accountNumber = null,
    Object? amount = null,
  }) {
    return _then(_$AmountTransferredImpl(
      selectedBank: null == selectedBank
          ? _value.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountTransferredImpl implements AmountTransferred {
  const _$AmountTransferredImpl(
      {required this.selectedBank,
      required this.accountName,
      required this.accountNumber,
      required this.amount});

  @override
  final String selectedBank;
  @override
  final String accountName;
  @override
  final String accountNumber;
  @override
  final String amount;

  @override
  String toString() {
    return 'BeneficiaryEvent.amountTransferred(selectedBank: $selectedBank, accountName: $accountName, accountNumber: $accountNumber, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountTransferredImpl &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedBank, accountName, accountNumber, amount);

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountTransferredImplCopyWith<_$AmountTransferredImpl> get copyWith =>
      __$$AmountTransferredImplCopyWithImpl<_$AmountTransferredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUsers,
    required TResult Function() deleteUser,
    required TResult Function() editUser,
    required TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)
        amountTransferred,
    required TResult Function() loadAmount,
  }) {
    return amountTransferred(selectedBank, accountName, accountNumber, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
    TResult? Function()? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult? Function()? loadAmount,
  }) {
    return amountTransferred?.call(
        selectedBank, accountName, accountNumber, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    TResult Function()? deleteUser,
    TResult Function()? editUser,
    TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult Function()? loadAmount,
    required TResult orElse(),
  }) {
    if (amountTransferred != null) {
      return amountTransferred(
          selectedBank, accountName, accountNumber, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(EditUser value) editUser,
    required TResult Function(AmountTransferred value) amountTransferred,
    required TResult Function(LoadAmount value) loadAmount,
  }) {
    return amountTransferred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(EditUser value)? editUser,
    TResult? Function(AmountTransferred value)? amountTransferred,
    TResult? Function(LoadAmount value)? loadAmount,
  }) {
    return amountTransferred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(EditUser value)? editUser,
    TResult Function(AmountTransferred value)? amountTransferred,
    TResult Function(LoadAmount value)? loadAmount,
    required TResult orElse(),
  }) {
    if (amountTransferred != null) {
      return amountTransferred(this);
    }
    return orElse();
  }
}

abstract class AmountTransferred implements BeneficiaryEvent {
  const factory AmountTransferred(
      {required final String selectedBank,
      required final String accountName,
      required final String accountNumber,
      required final String amount}) = _$AmountTransferredImpl;

  String get selectedBank;
  String get accountName;
  String get accountNumber;
  String get amount;

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountTransferredImplCopyWith<_$AmountTransferredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAmountImplCopyWith<$Res> {
  factory _$$LoadAmountImplCopyWith(
          _$LoadAmountImpl value, $Res Function(_$LoadAmountImpl) then) =
      __$$LoadAmountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAmountImplCopyWithImpl<$Res>
    extends _$BeneficiaryEventCopyWithImpl<$Res, _$LoadAmountImpl>
    implements _$$LoadAmountImplCopyWith<$Res> {
  __$$LoadAmountImplCopyWithImpl(
      _$LoadAmountImpl _value, $Res Function(_$LoadAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAmountImpl implements LoadAmount {
  const _$LoadAmountImpl();

  @override
  String toString() {
    return 'BeneficiaryEvent.loadAmount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAmountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUsers,
    required TResult Function() deleteUser,
    required TResult Function() editUser,
    required TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)
        amountTransferred,
    required TResult Function() loadAmount,
  }) {
    return loadAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUsers,
    TResult? Function()? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult? Function()? loadAmount,
  }) {
    return loadAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUsers,
    TResult Function()? deleteUser,
    TResult Function()? editUser,
    TResult Function(String selectedBank, String accountName,
            String accountNumber, String amount)?
        amountTransferred,
    TResult Function()? loadAmount,
    required TResult orElse(),
  }) {
    if (loadAmount != null) {
      return loadAmount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(EditUser value) editUser,
    required TResult Function(AmountTransferred value) amountTransferred,
    required TResult Function(LoadAmount value) loadAmount,
  }) {
    return loadAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(EditUser value)? editUser,
    TResult? Function(AmountTransferred value)? amountTransferred,
    TResult? Function(LoadAmount value)? loadAmount,
  }) {
    return loadAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(EditUser value)? editUser,
    TResult Function(AmountTransferred value)? amountTransferred,
    TResult Function(LoadAmount value)? loadAmount,
    required TResult orElse(),
  }) {
    if (loadAmount != null) {
      return loadAmount(this);
    }
    return orElse();
  }
}

abstract class LoadAmount implements BeneficiaryEvent {
  const factory LoadAmount() = _$LoadAmountImpl;
}

/// @nodoc
mixin _$BeneficiaryState {
  bool get fetchingList => throw _privateConstructorUsedError;
  List<dynamic> get usersList => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get fetchingBeneficiaryFailureOrUnit =>
      throw _privateConstructorUsedError;
  bool get transferIsLoading => throw _privateConstructorUsedError;
  int get currentBalance => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get loadAmountFailureFailureOrUnit =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get transferAmountFailureFailureOrUnit =>
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
      Option<Either<Failure, Unit>> fetchingBeneficiaryFailureOrUnit,
      bool transferIsLoading,
      int currentBalance,
      Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit,
      Option<Either<Failure, Unit>> transferAmountFailureFailureOrUnit});
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
    Object? transferIsLoading = null,
    Object? currentBalance = null,
    Object? loadAmountFailureFailureOrUnit = null,
    Object? transferAmountFailureFailureOrUnit = null,
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
      transferAmountFailureFailureOrUnit: null ==
              transferAmountFailureFailureOrUnit
          ? _value.transferAmountFailureFailureOrUnit
          : transferAmountFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
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
      Option<Either<Failure, Unit>> fetchingBeneficiaryFailureOrUnit,
      bool transferIsLoading,
      int currentBalance,
      Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit,
      Option<Either<Failure, Unit>> transferAmountFailureFailureOrUnit});
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
    Object? transferIsLoading = null,
    Object? currentBalance = null,
    Object? loadAmountFailureFailureOrUnit = null,
    Object? transferAmountFailureFailureOrUnit = null,
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
      transferAmountFailureFailureOrUnit: null ==
              transferAmountFailureFailureOrUnit
          ? _value.transferAmountFailureFailureOrUnit
          : transferAmountFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$BeneficiaryStateImpl implements _BeneficiaryState {
  const _$BeneficiaryStateImpl(
      {this.fetchingList = false,
      final List<dynamic> usersList = const [],
      this.fetchingBeneficiaryFailureOrUnit = const None(),
      this.transferIsLoading = false,
      this.currentBalance = 0,
      this.loadAmountFailureFailureOrUnit = const None(),
      this.transferAmountFailureFailureOrUnit = const None()})
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
  final Option<Either<Failure, Unit>> transferAmountFailureFailureOrUnit;

  @override
  String toString() {
    return 'BeneficiaryState(fetchingList: $fetchingList, usersList: $usersList, fetchingBeneficiaryFailureOrUnit: $fetchingBeneficiaryFailureOrUnit, transferIsLoading: $transferIsLoading, currentBalance: $currentBalance, loadAmountFailureFailureOrUnit: $loadAmountFailureFailureOrUnit, transferAmountFailureFailureOrUnit: $transferAmountFailureFailureOrUnit)';
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
                    fetchingBeneficiaryFailureOrUnit) &&
            (identical(other.transferIsLoading, transferIsLoading) ||
                other.transferIsLoading == transferIsLoading) &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.loadAmountFailureFailureOrUnit,
                    loadAmountFailureFailureOrUnit) ||
                other.loadAmountFailureFailureOrUnit ==
                    loadAmountFailureFailureOrUnit) &&
            (identical(other.transferAmountFailureFailureOrUnit,
                    transferAmountFailureFailureOrUnit) ||
                other.transferAmountFailureFailureOrUnit ==
                    transferAmountFailureFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fetchingList,
      const DeepCollectionEquality().hash(_usersList),
      fetchingBeneficiaryFailureOrUnit,
      transferIsLoading,
      currentBalance,
      loadAmountFailureFailureOrUnit,
      transferAmountFailureFailureOrUnit);

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
      final Option<Either<Failure, Unit>> fetchingBeneficiaryFailureOrUnit,
      final bool transferIsLoading,
      final int currentBalance,
      final Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit,
      final Option<Either<Failure, Unit>>
          transferAmountFailureFailureOrUnit}) = _$BeneficiaryStateImpl;

  @override
  bool get fetchingList;
  @override
  List<dynamic> get usersList;
  @override
  Option<Either<Failure, Unit>> get fetchingBeneficiaryFailureOrUnit;
  @override
  bool get transferIsLoading;
  @override
  int get currentBalance;
  @override
  Option<Either<Failure, Unit>> get loadAmountFailureFailureOrUnit;
  @override
  Option<Either<Failure, Unit>> get transferAmountFailureFailureOrUnit;

  /// Create a copy of BeneficiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeneficiaryStateImplCopyWith<_$BeneficiaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
