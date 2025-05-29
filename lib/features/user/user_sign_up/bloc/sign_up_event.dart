part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;

  const factory SignUpEvent.submitted({
    required String username,
    required String lastname,
    required String password,
    required String email,
    required String cellNumber,
    required String selectedProvince,
    required String sub,
    required String city,
    required String streetNum,
    required String streetName,
    required String idNum,
    required String dob,
  }) = SignUpSubmitted;
}
