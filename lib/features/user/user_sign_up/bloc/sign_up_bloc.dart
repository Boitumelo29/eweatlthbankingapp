import 'package:bloc/bloc.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository authRepository;

  SignUpBloc({required this.authRepository}) : super(const SignUpState()) {
    on<SignUpSubmitted>((event, emit) {
      emit(state.copyWith(status: SignupStatus.loading));
      try {
        authRepository.signup(
            username: event.username,
            lastname: event.lastname,
            password: event.password,
            email: event.email,
            cellphone: event.cellphone,
            selectedProvince: event.selectedProvince,
            sub: event.sub,
            city: event.city,
            streetNum: event.streetNum,
            streetName: event.streetName,
            idNum: event.idNum,
            dob: event.dob);
        emit(state.copyWith(status: SignupStatus.success));
        print("we can login now");
      } catch (e) {
        emit(state.copyWith(status: SignupStatus.failure));
      }
    });
  }
}
