
import 'package:flutter/material.dart';

class SizedSpace extends StatelessWidget {
  final double? width;
  final double? height;

  const SizedSpace({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height ?? 20,
      width: width ?? 20,
    );
  }
}
