import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Image.asset(
          alignment: Alignment.center,
          'lib/assests/new_logo.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
