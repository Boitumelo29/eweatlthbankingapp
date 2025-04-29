import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/beneficiary_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BeneficiaryPage(),
    );
  }
}

class BeneficiaryPage extends StatelessWidget {
  const BeneficiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BeneficiaryView();
  }
}
