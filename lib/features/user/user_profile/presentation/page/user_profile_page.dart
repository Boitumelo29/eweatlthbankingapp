import 'package:auto_route/annotations.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/bloc/user_profile_bloc.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/presentation/page/user_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UserProfileBloc>().add(const LoadUserProfile());
    context.read<UserProfileBloc>().add(const FetchUserImage());
    return const UserProfileView();
  }
}
