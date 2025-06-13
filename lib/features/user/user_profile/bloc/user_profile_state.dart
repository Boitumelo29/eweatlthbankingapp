part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @Default("") String userName,
    @Default("") String accountNumber,
    @Default("") String cellNumber,
    @Default("") String id,
    @Default("") String userImage,
    @Default(false) bool updateIsLoading,
    @Default(None())
    Option<Either<Failure, Unit>> updateProfileFailureFailureOrUnit,
  }) = _UserProfileState;

  factory UserProfileState.initial() => const UserProfileState();
}
