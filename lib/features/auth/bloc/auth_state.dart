part of 'auth_bloc.dart';


@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.authenticated({required String email}) = AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
}
