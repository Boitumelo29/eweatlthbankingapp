import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:flutter/material.dart';

class MyLearningText extends StatelessWidget {
  const MyLearningText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "eWealth",
      style: TextStyle(color: Colors.green, fontSize: 40, fontWeight: FontWeight.w600),
    );
  }
}

class MyLearningSubText extends StatelessWidget {
  const MyLearningSubText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Transfers made simple.",
      style: TextStyle(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.w300),
    );
  }
}
