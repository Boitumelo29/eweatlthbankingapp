// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)
        signUp,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckAuthStatusImplCopyWith<$Res> {
  factory _$$CheckAuthStatusImplCopyWith(_$CheckAuthStatusImpl value,
          $Res Function(_$CheckAuthStatusImpl) then) =
      __$$CheckAuthStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthStatusImpl>
    implements _$$CheckAuthStatusImplCopyWith<$Res> {
  __$$CheckAuthStatusImplCopyWithImpl(
      _$CheckAuthStatusImpl _value, $Res Function(_$CheckAuthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthStatusImpl implements CheckAuthStatus {
  const _$CheckAuthStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)
        signUp,
    required TResult Function() logout,
  }) {
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult? Function()? logout,
  }) {
    return checkAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return checkAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthStatus implements AuthEvent {
  const factory CheckAuthStatus() = _$CheckAuthStatusImpl;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)
        signUp,
    required TResult Function() logout,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult? Function()? logout,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent(
      {required final String email,
      required final String password}) = _$LoginEventImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventImplCopyWith<$Res> {
  factory _$$SignUpEventImplCopyWith(
          _$SignUpEventImpl value, $Res Function(_$SignUpEventImpl) then) =
      __$$SignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      String lastname,
      String password,
      String email,
      String cellphone,
      String selectedProvince,
      String sub,
      String city,
      String streetNum,
      String streetName,
      String idNum,
      String dob});
}

/// @nodoc
class __$$SignUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEventImpl>
    implements _$$SignUpEventImplCopyWith<$Res> {
  __$$SignUpEventImplCopyWithImpl(
      _$SignUpEventImpl _value, $Res Function(_$SignUpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? lastname = null,
    Object? password = null,
    Object? email = null,
    Object? cellphone = null,
    Object? selectedProvince = null,
    Object? sub = null,
    Object? city = null,
    Object? streetNum = null,
    Object? streetName = null,
    Object? idNum = null,
    Object? dob = null,
  }) {
    return _then(_$SignUpEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      selectedProvince: null == selectedProvince
          ? _value.selectedProvince
          : selectedProvince // ignore: cast_nullable_to_non_nullable
              as String,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetNum: null == streetNum
          ? _value.streetNum
          : streetNum // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      idNum: null == idNum
          ? _value.idNum
          : idNum // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventImpl implements SignUpEvent {
  const _$SignUpEventImpl(
      {required this.username,
      required this.lastname,
      required this.password,
      required this.email,
      required this.cellphone,
      required this.selectedProvince,
      required this.sub,
      required this.city,
      required this.streetNum,
      required this.streetName,
      required this.idNum,
      required this.dob});

  @override
  final String username;
  @override
  final String lastname;
  @override
  final String password;
  @override
  final String email;
  @override
  final String cellphone;
  @override
  final String selectedProvince;
  @override
  final String sub;
  @override
  final String city;
  @override
  final String streetNum;
  @override
  final String streetName;
  @override
  final String idNum;
  @override
  final String dob;

  @override
  String toString() {
    return 'AuthEvent.signUp(username: $username, lastname: $lastname, password: $password, email: $email, cellphone: $cellphone, selectedProvince: $selectedProvince, sub: $sub, city: $city, streetNum: $streetNum, streetName: $streetName, idNum: $idNum, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cellphone, cellphone) ||
                other.cellphone == cellphone) &&
            (identical(other.selectedProvince, selectedProvince) ||
                other.selectedProvince == selectedProvince) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.streetNum, streetNum) ||
                other.streetNum == streetNum) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.idNum, idNum) || other.idNum == idNum) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      lastname,
      password,
      email,
      cellphone,
      selectedProvince,
      sub,
      city,
      streetNum,
      streetName,
      idNum,
      dob);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      __$$SignUpEventImplCopyWithImpl<_$SignUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)
        signUp,
    required TResult Function() logout,
  }) {
    return signUp(username, lastname, password, email, cellphone,
        selectedProvince, sub, city, streetNum, streetName, idNum, dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult? Function()? logout,
  }) {
    return signUp?.call(username, lastname, password, email, cellphone,
        selectedProvince, sub, city, streetNum, streetName, idNum, dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(username, lastname, password, email, cellphone,
          selectedProvince, sub, city, streetNum, streetName, idNum, dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpEvent implements AuthEvent {
  const factory SignUpEvent(
      {required final String username,
      required final String lastname,
      required final String password,
      required final String email,
      required final String cellphone,
      required final String selectedProvince,
      required final String sub,
      required final String city,
      required final String streetNum,
      required final String streetName,
      required final String idNum,
      required final String dob}) = _$SignUpEventImpl;

  String get username;
  String get lastname;
  String get password;
  String get email;
  String get cellphone;
  String get selectedProvince;
  String get sub;
  String get city;
  String get streetNum;
  String get streetName;
  String get idNum;
  String get dob;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
          _$LogoutEventImpl value, $Res Function(_$LogoutEventImpl) then) =
      __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
      _$LogoutEventImpl _value, $Res Function(_$LogoutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)
        signUp,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String username,
            String lastname,
            String password,
            String email,
            String cellphone,
            String selectedProvince,
            String sub,
            String city,
            String streetNum,
            String streetName,
            String idNum,
            String dob)?
        signUp,
    TResult Function()? logout,
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
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements AuthEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatus status, String? email, String? error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatus status, String? email, String? error});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.status = AuthStatus.initial, this.email, this.error});

  @override
  @JsonKey()
  final AuthStatus status;
  @override
  final String? email;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState(status: $status, email: $email, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, email, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final AuthStatus status,
      final String? email,
      final String? error}) = _$AuthStateImpl;

  @override
  AuthStatus get status;
  @override
  String? get email;
  @override
  String? get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
