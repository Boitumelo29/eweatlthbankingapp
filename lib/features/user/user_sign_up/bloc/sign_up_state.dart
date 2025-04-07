part of 'sign_up_bloc.dart';

enum SignupStatus { initial, loading, success, failure }

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    //todo add failure or unit here
    @Default(SignupStatus.initial) SignupStatus status,
    String? error,
  }) = _SignUpState;
}
