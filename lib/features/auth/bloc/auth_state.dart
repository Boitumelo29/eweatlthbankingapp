part of 'auth_bloc.dart';


enum AuthStatus { initial, authenticated, unauthenticated, failure, loading }


@freezed
class AuthState with _$AuthState {
  // @Default(AuthStatus.initial) AuthStatus authStatus;
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.authenticated({required String email}) = AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
}
