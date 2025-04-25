part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
   const factory AuthEvent.login({required String email, required String password}) = LoginEvent;
   const factory AuthEvent.signUp({  required String username,
     required String lastname,
     required String password,
     required String email,
     required String cellphone,
     required String selectedProvince,
     required String sub,
     required String city,
     required String streetNum,
     required String streetName,
     required String idNum,
     required String dob,}) = SignUpEvent;
  const factory AuthEvent.logout() = LogoutEvent;
}
