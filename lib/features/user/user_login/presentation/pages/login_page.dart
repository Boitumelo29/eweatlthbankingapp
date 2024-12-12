import 'dart:convert';

import 'package:eweatlthbankingapp/common_widgets/screens/user_layout/user_layout_screen.dart';
import 'package:eweatlthbankingapp/common_widgets/sized_box/sized_space.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';
import 'package:eweatlthbankingapp/features/user/user_login/model/model.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/email.dart';
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

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userDataJson = prefs.getString('userData');

      if (userDataJson != null) {
        // Parse the stored user data
        final Map<String, dynamic> userData = jsonDecode(userDataJson);
        
        // Check if email and password match
        if (userData['email'] == email.text && 
            userData['password'] == password.text) {
          // Store login state and user data
          await prefs.setBool('isLoggedIn', true);
          await prefs.setString('accountId', userData['email']); // Using email as accountId
          await prefs.setString('username', userData['firstName']);
          await prefs.setString('surname', userData['lastName']);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainHomeScreen()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid email or password'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No registered users found'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      print("Login error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

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
}
