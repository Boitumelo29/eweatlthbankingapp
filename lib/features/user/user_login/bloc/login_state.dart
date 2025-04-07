part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failure }

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    String? error,
  }) = _LoginState;
}