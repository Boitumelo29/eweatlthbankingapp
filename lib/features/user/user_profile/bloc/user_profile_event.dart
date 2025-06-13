part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.started() = _Started;
  const factory UserProfileEvent.loadUserProfile() = LoadUserProfile;
  const factory UserProfileEvent.getUserImage({required String accountId, required ImageSource img }) = GetUserImage;
  const factory UserProfileEvent.fetchUserImage() = FetchUserImage;

}
