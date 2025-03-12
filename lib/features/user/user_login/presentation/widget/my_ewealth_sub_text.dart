import 'package:flutter/material.dart';

class EWealthSubText extends StatelessWidget {
  const EWealthSubText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Transfers made simple.",
      style: TextStyle(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.w300),
    );
  }
}
