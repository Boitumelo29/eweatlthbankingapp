import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

class SignupConfirmPassword extends StatelessWidget {
  final TextEditingController passwordConfirm;
  final FocusNode passwordConfirmFocus;
  final TextEditingController password;
  const SignupConfirmPassword({super.key, required this.passwordConfirm, required this.passwordConfirmFocus, required this.password});

  @override
  Widget build(BuildContext context) {
    return  LongTextFieldForm(
      isRed: false,
      controller: passwordConfirm,
      focusNode: passwordConfirmFocus,
      hintText: Strings.confirmPassword,
      labelText: Strings.confirmPassword,
      obsureText: true,
      showPrefixIcon: true,
      prefixIcon: Icons.password,
      showSuffixIcon: true,
      onChanged: (value) {},
      validator: (value) {
        return Validation.passwordConformValidation(
            passwordConfirm.text, password.text);
      },
    );
  }
}
