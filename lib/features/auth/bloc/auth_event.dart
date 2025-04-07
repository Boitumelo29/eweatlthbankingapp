part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
   const factory AuthEvent.login({required String email, required String password}) = LoginEvent;
  const factory AuthEvent.logout() = LogoutEvent;
}
