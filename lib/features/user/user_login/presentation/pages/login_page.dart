import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/screens/user_layout/user_layout_screen.dart';
import 'package:eweatlthbankingapp/common_widgets/sized_box/sized_space.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/user/user_login/bloc/login_bloc.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/email.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/have_an_account.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/logo_image.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/ewealth_text.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/my_ewealth_sub_text.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/password.dart';
import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  final VoidCallback? show;

  const LoginPage({super.key, this.show});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  FocusNode emailFocus = FocusNode();
  TextEditingController password = TextEditingController();
  FocusNode passwordFocus = FocusNode();
  bool isLoading = false;
  bool isForgotPasswordLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: _listener,
      builder: (context, state) {
        return UserLayoutScreen(
          children: [
            const EWealthText(),
            const EWealthSubText(),
            const LogoImage(),
            const SizedSpace(
              height: 60,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    LoginEmail(
                      email: email,
                      emailFocus: emailFocus,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LoginPassword(
                      password: password,
                      passwordFocus: passwordFocus,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LongButton(
                      isLoading: isLoading,
                      onTap: () {
                        ///todo check if you want to push or push and replace over here
                        if (_formKey.currentState!.validate()) {
                          context.read<LoginBloc>().add(
                                LoginSubmitted(
                                    email: email.text, password: password.text),
                              );
                          // _login();
                        }
                      },
                      title: Strings.login,
                    ),
                    const SizedSpace(
                      height: 10,
                    ),
                    DontHaveAnAccount(onPressed: widget.show),
                  ],
                ))
          ],
        );
      },
    );
  }

  void _listener(BuildContext context, LoginState state) {
    if (state.status == LoginStatus.success) {
      context.router.push(const MainHomeRoute());
    } else if (state.status == LoginStatus.failure) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid email or password'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
