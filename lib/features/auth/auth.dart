import 'package:auto_route/annotations.dart';
import 'package:eweatlthbankingapp/features/auth/bloc/auth_bloc.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/home_screen/bloc/home_bloc.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';
import 'package:eweatlthbankingapp/features/user/user_login/bloc/login_bloc.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/pages/login_page.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/bloc/sign_up_bloc.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/page/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MyMainAuthPage extends StatelessWidget {
  const MyMainAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(authRepository: AuthRepository())
            ..add(const CheckAuthStatus()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) =>
              HomeBloc(authRepo: AuthRepository())..add(const LoadDeposit()),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state.status == AuthStatus.loading) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          if (state.status == AuthStatus.authenticated) {
            return const MainHomePage();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;

  void go() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return BlocProvider(
        create: (context) => LoginBloc(authRepository: AuthRepository()),
        child: LoginPage(
          show: go,
        ),
      );
    } else {
      return BlocProvider(
        create: (context) => SignUpBloc(authRepository: AuthRepository()),
        child: SignUpPage(show: go),
      );
    }
  }
}
