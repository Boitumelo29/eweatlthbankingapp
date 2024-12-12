import 'package:flutter/material.dart';

class DontHaveAnAccount extends StatelessWidget {
  final Function()? onPressed;

  const DontHaveAnAccount({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account ? ",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "signup",
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
