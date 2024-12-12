import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "lib/assets/5.jpg",
        width: 160,
        height: 160,
      ),
    );
  }
}
