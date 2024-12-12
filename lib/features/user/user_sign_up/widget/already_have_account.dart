import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final Function()? onPressed;

  const AlreadyHaveAnAccount({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account? ",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "login",
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
