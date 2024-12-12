//  import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
// import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
// import 'package:flutter/material.dart';
//
// class LoginButton extends StatelessWidget {
//   final bool isLoading;
//   final FocusNode emailFocus;
//   final FocusNode passwordFocus;
//    GlobalKey<FormState>() form;
//   const LoginButton({super.key, required this.isLoading, required this.emailFocus, required this.passwordFocus});
//
//   @override
//   Widget build(BuildContext context) {
//     return   LongButton(
//       isLoading: isLoading,
//       onTap: () {
//         emailFocus.unfocus();
//         passwordFocus.unfocus();
//         if (formKey.currentState!.validate()) {
//         //  _login();
//         }
//       },
//       title: Strings.login,
//     );
//   }
// }
