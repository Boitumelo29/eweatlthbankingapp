import 'dart:convert';

import 'package:eweatlthbankingapp/common_widgets/screens/user_layout/user_layout_screen.dart';
import 'package:eweatlthbankingapp/common_widgets/sized_box/sized_space.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/features/home_scree/presenation/home_page.dart';
import 'package:eweatlthbankingapp/features/user/user_login/model/model.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/auth_row.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/email.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/forget_password.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/have_an_account.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/logo_image.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/mylearning_text.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/password.dart';
import 'package:eweatlthbankingapp/network/api_service.dart';
import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return UserLayoutScreen(
      children: [
        const MyLearningText(),
        const MyLearningSubText(),
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
                    emailFocus.unfocus();
                    passwordFocus.unfocus();
                    if (_formKey.currentState!.validate()) {
                      _login();
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
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      isLoading = true;
    });

    final apiService = ApiService();

    try {
      final loginModel = LoginModel(
        username: email.text,
        password: password.text,
      );
      final response = await apiService.loginUser(loginModel);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final accountId = responseData['accountId'].toString();
        await prefs.setBool('isLoggedIn', true);
        await prefs.setString('userToken', response.body);
        await prefs.setString('accountId', accountId);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainHomeScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to log in: ${response.body}')),
        );
      }
    } catch (e) {
      print("this is my error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }
}
