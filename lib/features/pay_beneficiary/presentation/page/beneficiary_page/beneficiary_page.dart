import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/beneficiary_page/beneficiary_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BeneficiaryPage extends StatelessWidget {
  const BeneficiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BeneficiaryView();
  }
}
