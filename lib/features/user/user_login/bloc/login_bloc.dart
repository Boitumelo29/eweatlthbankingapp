import 'package:bloc/bloc.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({required this.authRepository}) : super(const LoginState()) {
    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(status: LoginStatus.loading));

      try {
        final success =
            await authRepository.loginUser(event.email, event.password);
        if (success) {
          emit(state.copyWith(status: LoginStatus.success));
        } else {
          emit(state.copyWith(
              status: LoginStatus.failure, error: "Invalid email or password"));
        }
      } catch (e) {
        emit(state.copyWith(
            status: LoginStatus.failure,
            error: "An error occurred during login"));
      }
    });
  }
}
