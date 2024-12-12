import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

class SignupPassword extends StatelessWidget {
  final TextEditingController password;
  final FocusNode password_f;
  const SignupPassword({super.key, required this.password, required this.password_f});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: password,
      focusNode: password_f,
      hintText: Strings.password,
      labelText: Strings.password,
      obsureText: true,
      showPrefixIcon: true,
      prefixIcon: Icons.password,
      showSuffixIcon: true,
      onChanged: (value) {},
      validator: (value) {
       return Validation.passwordValidation(value);
      },
    );
  }
}
