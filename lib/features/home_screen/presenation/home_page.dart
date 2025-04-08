import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/home_screen/bloc/home_bloc.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(authRepo: AuthRepository())
        ..add(const LoadDeposit())
        ..add(const LoadUser()),
      child: const MainHomeView(),
    );
  }
}
