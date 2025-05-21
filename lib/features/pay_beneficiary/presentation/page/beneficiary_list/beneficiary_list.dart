import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/beneficiary_list_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BeneficiaryListPage extends StatelessWidget {
  const BeneficiaryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BeneficiaryListView();
  }
}
