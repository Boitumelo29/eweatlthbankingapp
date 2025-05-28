import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/beneficiary_bloc/beneficiary_bloc.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/data/repo_impl.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/beneficiary_list/beneficiary_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BeneficiaryListPage extends StatelessWidget {
  const BeneficiaryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BeneficiaryBloc(beneficiaryRepository: BeneficiaryRepositoryImpl())
            ..add(const GetAllUsers()),
      child: const BeneficiaryListView(),
    );
  }
}
