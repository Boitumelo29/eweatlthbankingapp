part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.started() = _Started;
  const factory UserProfileEvent.loadUser() = LoadUser;
}
