import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

class SignupEmail extends StatelessWidget {
  final TextEditingController email;
  final FocusNode emailFocus;

  const SignupEmail({super.key, required this.email, required this.emailFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: email,
      focusNode: emailFocus,
      hintText: Strings.email,
      labelText: Strings.email,
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.email_outlined,
      showSuffixIcon: false,
      onChanged: (value) {},
      validator: (value) {
        return Validation.emailValidation(value);
      },
    );
  }
}
