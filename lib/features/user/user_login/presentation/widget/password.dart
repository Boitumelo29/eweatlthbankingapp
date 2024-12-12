import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

class LoginPassword extends StatelessWidget {
  final TextEditingController password;
  final  FocusNode passwordFocus;
  const LoginPassword({super.key, required this.password, required this.passwordFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      showPrefixIcon: true,
      prefixIcon: Icons.password,
      focusNode: passwordFocus,
      validator: (value) {
        return Validation.passwordValidation(value);
      },
      obsureText: true,
      showSuffixIcon: true,
      hintText: Strings.password,
      labelText: Strings.password,
      controller: password,
      onChanged: (value) {},
    );
  }
}
