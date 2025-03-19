import 'package:bloc/bloc.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {

    // on<CheckAuthStatus>((event, emit) async {
    //   emit(state.copyWith(status: AuthStatus.loading));
    //
    //   try {
    //     final SharedPreferences prefs = await SharedPreferences.getInstance();
    //     final String? email = prefs.getString('accountId');
    //
    //     if (email != null) {
    //       emit(state.copyWith(status: AuthStatus.authenticated, email: email));
    //     } else {
    //       emit(state.copyWith(status: AuthStatus.unauthenticated));
    //     }
    //   } catch (e) {
    //     emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
    //   }
    // });


    // on<LoginEvent>((event, emit) async {
    //   emit(state.copyWith(status: AuthStatus.loading));
    //
    //   try {
    //     final SharedPreferences prefs = await SharedPreferences.getInstance();
    //     final String? userDataJson = prefs.getString('userData');
    //
    //     if (userDataJson != null) {
    //       final Map<String, dynamic> userData = jsonDecode(userDataJson);
    //
    //       if (userData['email'] == event.email &&
    //           userData['password'] == event.password) {
    //         await prefs.setBool('isLoggedIn', true);
    //         await prefs.setString('accountId', userData['email']);
    //         await prefs.setString('username', userData['firstName']);
    //         await prefs.setString('surname', userData['lastName']);
    //
    //         emit(state.copyWith(status: AuthStatus.authenticated, email: event.email));
    //       } else {
    //         emit(state.copyWith(status: AuthStatus.failure, error: "Invalid email or password"));
    //       }
    //     } else {
    //       emit(state.copyWith(status: AuthStatus.failure, error: "User data not found"));
    //     }
    //   } catch (e) {
    //     emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
    //   }
    // });
    // on<LogoutEvent>((event, emit) async {
    //   emit(state.copyWith(status: AuthStatus.loading));
    //
    //   try {
    //     final SharedPreferences prefs = await SharedPreferences.getInstance();
    //     await prefs.remove('isLoggedIn');
    //     await prefs.remove('accountId');
    //     await prefs.remove('username');
    //     await prefs.remove('surname');
    //
    //     emit(state.copyWith(status: AuthStatus.unauthenticated));
    //   } catch (e) {
    //     emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
    //   }
    // });
    // on<AuthEvent>((event, emit) async {
    //   await event.map(
    //     checkAuthStatus: (_) async {
    //       bool isLoggedIn = await authRepository.isLoggedIn();
    //       if (isLoggedIn) {
    //         String? email = await authRepository.getUserEmail();
    //         if (email != null) {
    //           emit(AuthState.authenticated(email: email));
    //         } else {
    //           emit(const AuthState.unauthenticated());
    //         }
    //       } else {
    //         emit(const AuthState.unauthenticated());
    //       }
    //     },
    //     login: (e) async {
    //       await authRepository.saveUserEmail(e.email);
    //       emit(AuthState.authenticated(email: e.email));
    //     },
    //     logout: (_) async {
    //       await authRepository.logout();
    //       emit(const AuthState.unauthenticated());
    //     },
    //   );
    // });
  }
}
