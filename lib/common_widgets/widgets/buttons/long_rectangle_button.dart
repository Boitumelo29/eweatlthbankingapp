import 'package:flutter/material.dart';

class LongRectangleButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const LongRectangleButton(
      {super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 380,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(title),
          ),
        ));
  }
}
