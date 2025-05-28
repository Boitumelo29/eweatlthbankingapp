import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/beneficiary_bloc/beneficiary_bloc.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/data/repo_impl.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/beneficiary_page/beneficiary_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BeneficiaryPage extends StatelessWidget {
  final int index;

  const BeneficiaryPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BeneficiaryBloc(beneficiaryRepository: BeneficiaryRepositoryImpl())
            ..add(const LoadAmount())
            ..add(const GetAllUsers()),
      child: BeneficiaryView(
        index: index,
      ),
    );
  }
}
