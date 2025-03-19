import 'package:auto_route/annotations.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';
import 'package:eweatlthbankingapp/features/user/user_login/bloc/login_bloc.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/pages/login_page.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/page/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class MainAuthPage extends StatelessWidget {
  const MainAuthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: checkLoginStatus(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            bool isLoggedIn = snapshot.data as bool;
            return isLoggedIn ? const HomePage() : const AuthPage();
          }
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }

  Future<bool> checkLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
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
        create: (context) => LoginBloc(),
        child: LoginPage(
          show: go,
        ),
      );
    } else {
      return SignUpPage(show: go);
    }
  }
}

