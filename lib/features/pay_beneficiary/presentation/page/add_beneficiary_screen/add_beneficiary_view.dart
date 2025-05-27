import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/add_beneficary_bloc/add_beneficiary_bloc.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/data/repo_impl.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/add_beneficiary_screen/add_beneficiary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddBeneficiaryPage extends StatelessWidget {
  const AddBeneficiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddBeneficiaryBloc(
          beneficiaryRepository: BeneficiaryRepositoryImpl()),
      child: const AddBeneficiaryView(),
    );
  }
}
