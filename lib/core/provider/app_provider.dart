import 'package:eweatlthbankingapp/core/shared/image_repo.dart';
import 'package:eweatlthbankingapp/features/auth/bloc/auth_bloc.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/home_screen/bloc/home_bloc.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/bloc/user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(authRepository: AuthRepository())
              ..add(const CheckAuthStatus()),
          ),
          BlocProvider<HomeBloc>(
            create: (context) =>
            HomeBloc(authRepo: AuthRepository())..add(const LoadDeposit()),
          ),
          BlocProvider<UserProfileBloc>(
              create: (context) => UserProfileBloc(
                  authRepo: AuthRepository(),
                  imageRepository: ImageRepository())),
        ],
        child:child);
  }
}
