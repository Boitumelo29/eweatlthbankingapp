import 'package:flutter/material.dart';

class LoginForgetPassword extends StatelessWidget {
  final Function() onTap;
  const LoginForgetPassword({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap,
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    );
  }
}
