part of 'auth_bloc.dart';


enum AuthStatus { initial, authenticated, unauthenticated, failure, loading }


@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    String? email,
    String? error,
  }) = _AuthState;
}
