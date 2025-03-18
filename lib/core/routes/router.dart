import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainHomeRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
  ];
}