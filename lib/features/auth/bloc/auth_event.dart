part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
  const factory AuthEvent.login({required String email}) = LoginEvent;
  const factory AuthEvent.logout() = LogoutEvent;
}
