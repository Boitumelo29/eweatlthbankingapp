// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

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
/// [MainAuthPage]
class MainAuthRoute extends PageRouteInfo<void> {
  const MainAuthRoute({List<PageRouteInfo>? children})
    : super(MainAuthRoute.name, initialChildren: children);

  static const String name = 'MainAuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainAuthPage();
    },
  );
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
