import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/auth/auth.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/deposit_page.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/payement_success_page.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/payment_failure_page.dart';
import 'package:eweatlthbankingapp/features/onboarding/presentation/onboarding_page.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/add_beneficiary_screen/add_beneficiary_view.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/beneficiary_list/beneficiary_list.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/page/beneficiary_page/beneficiary_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presentation/transfer_screen.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presentation/transfer_screen_success.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/transfer_screen_fail.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/pages/login_page.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/presentation/page/user_profile_page.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/page/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: MyMainAuthRoute.page, initial: true, path: '/myMainAuth'),
        AutoRoute(page: MainHomeRoute.page, path: '/mainHome'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(page: SignUpRoute.page, path: '/signUp'),
        AutoRoute(page: DepositRoute.page, path: '/deposit'),
        AutoRoute(page: TransferRoute.page, path: '/transfer'),
        AutoRoute(page: PaymentSuccessRoute.page, path: '/paymentSuccess'),
        AutoRoute(page: PaymentFailureRoute.page, path: '/paymentFailure'),
        AutoRoute(page: OnboardingRoute.page, path: '/onboarding'),
        AutoRoute(page: TransferSuccessRoute.page, path: '/transferSuccess'),
        AutoRoute(page: TransferFailureRoute.page, path: '/transferFailure'),
        AutoRoute(page: BeneficiaryRoute.page, path: '/beneficiary'),
        AutoRoute(page: BeneficiaryListRoute.page, path: '/beneficiaryList'),
        AutoRoute(page: AddBeneficiaryRoute.page, path: '/addBeneficiary'),
        AutoRoute(page: UserProfileRoute.page, path: '/userProfile'),
      ];
}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next(true);
  }
}
