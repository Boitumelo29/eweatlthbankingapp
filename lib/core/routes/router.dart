import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/deposit_page.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/payement_success_page.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/payment_failure_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presentation/transfer_screen.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';

import '../../features/auth/auth.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MyMainAuthRoute.page, initial: true),
    AutoRoute(page: MainHomeRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: DepositRoute.page),
    AutoRoute(page: TransferRoute.page),
    AutoRoute(page: PaymentSuccessRoute.page),
    AutoRoute(page: PaymentFailureRoute.page)
  ];
}