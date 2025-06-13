import 'package:eweatlthbankingapp/core/provider/app_provider.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:eweatlthbankingapp/core/shared/image_repo.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/bloc/user_profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return AppProvider(
        child: ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<UserProfileBloc>(
            create: (context) => UserProfileBloc(
              authRepo: AuthRepository(),
              imageRepository: ImageRepository(),
            ),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    ));
  }
}
