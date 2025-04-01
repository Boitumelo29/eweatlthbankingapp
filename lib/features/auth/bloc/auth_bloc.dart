import 'package:bloc/bloc.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {
    on<CheckAuthStatus>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));

      try {
        final userEmail = authRepository.getUserEmail();
        emit(
            state.copyWith(status: AuthStatus.authenticated, email: userEmail));
      } catch (e) {
        emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
      }
    });

    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));

      try {
        authRepository.loginUser(event.email, event.password);
      } catch (e) {
        print(e);
      }
    });
    on<LogoutEvent>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));

      try {
        authRepository.logout();
        emit(state.copyWith(status: AuthStatus.unauthenticated));
      } catch (e) {
        emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
      }
    });

    on<AuthEvent>((event, emit) async {
      await event.map(
        checkAuthStatus: (_) async {
          bool isLoggedIn = await authRepository.isLoggedIn();
          if (isLoggedIn) {
            String? email = await authRepository.getUserEmail();
            if (email != null) {
              emit(AuthState.authenticated(email: email));
            } else {
              emit(const AuthState.unauthenticated());
            }
          } else {
            emit(const AuthState.unauthenticated());
          }
        },
        login: (e) async {
          await authRepository.saveUserEmail(e.email);
          emit(AuthState.authenticated(email: e.email));
        },
        logout: (_) async {
          await authRepository.logout();
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}
