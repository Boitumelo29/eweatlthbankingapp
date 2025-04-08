// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [DepositPage]
class DepositRoute extends PageRouteInfo<void> {
  const DepositRoute({List<PageRouteInfo>? children})
    : super(DepositRoute.name, initialChildren: children);

  static const String name = 'DepositRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DepositPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key, VoidCallback? show, List<PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key, show: show),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return LoginPage(key: args.key, show: args.show);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.show});

  final Key? key;

  final VoidCallback? show;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, show: $show}';
  }
}

/// generated route for
/// [MainHomePage]
class MainHomeRoute extends PageRouteInfo<void> {
  const MainHomeRoute({List<PageRouteInfo>? children})
    : super(MainHomeRoute.name, initialChildren: children);

  static const String name = 'MainHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainHomePage();
    },
  );
}

/// generated route for
/// [MyMainAuthPage]
class MyMainAuthRoute extends PageRouteInfo<void> {
  const MyMainAuthRoute({List<PageRouteInfo>? children})
    : super(MyMainAuthRoute.name, initialChildren: children);

  static const String name = 'MyMainAuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MyMainAuthPage();
    },
  );
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingPage();
    },
  );
}

/// generated route for
/// [PaymentFailurePage]
class PaymentFailureRoute extends PageRouteInfo<void> {
  const PaymentFailureRoute({List<PageRouteInfo>? children})
    : super(PaymentFailureRoute.name, initialChildren: children);

  static const String name = 'PaymentFailureRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentFailurePage();
    },
  );
}

/// generated route for
/// [PaymentSuccessPage]
class PaymentSuccessRoute extends PageRouteInfo<void> {
  const PaymentSuccessRoute({List<PageRouteInfo>? children})
    : super(PaymentSuccessRoute.name, initialChildren: children);

  static const String name = 'PaymentSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentSuccessPage();
    },
  );
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({Key? key, VoidCallback? show, List<PageRouteInfo>? children})
    : super(
        SignUpRoute.name,
        args: SignUpRouteArgs(key: key, show: show),
        initialChildren: children,
      );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignUpRouteArgs>(
        orElse: () => const SignUpRouteArgs(),
      );
      return SignUpPage(key: args.key, show: args.show);
    },
  );
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, this.show});

  final Key? key;

  final VoidCallback? show;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, show: $show}';
  }
}

/// generated route for
/// [TransferPage]
class TransferRoute extends PageRouteInfo<void> {
  const TransferRoute({List<PageRouteInfo>? children})
    : super(TransferRoute.name, initialChildren: children);

  static const String name = 'TransferRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransferPage();
    },
  );
}
