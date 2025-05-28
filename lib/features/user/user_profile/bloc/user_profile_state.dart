part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {

  const factory UserProfileState({
    String? userName,
    String? accountNumber,
    @Default(None()) Option<Either<Failure, Unit>> updateProfileFailureFailureOrUnit,
}) = _UserProfileState;

  factory UserProfileState.initial() = UserProfileState;
}
