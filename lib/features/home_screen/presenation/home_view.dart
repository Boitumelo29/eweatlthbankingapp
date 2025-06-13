import 'dart:convert';

import 'package:eweatlthbankingapp/features/user/user_profile/bloc/user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/home_screen/bloc/home_bloc.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/widget/balance_card.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/widget/transaction_buttons.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/widget/transactions_history_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainHomeView extends StatefulWidget {
  const MainHomeView({super.key});

  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: _listener,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Builder(builder: (context) {
                          context.read<UserProfileBloc>().add(const LoadUserProfile());
                          context
                              .read<UserProfileBloc>()
                              .add(const FetchUserImage());
                          final userImage =
                              context.read<UserProfileBloc>().state.userImage;

                          return userImage.isEmpty
                              ? const Icon(
                                  Icons.person,
                                  size: 50,
                                )
                              : SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Center(
                                    child: ClipOval(
                                      child: Image.memory(
                                        base64Decode(userImage),
                                        fit: BoxFit.cover,
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                );
                        }),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        state.userName ?? "Loading",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Text(
                        state.accountNumber ?? "**** ***** 1234",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {
                    context.router.push(const UserProfileRoute());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings_input_component_outlined),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Logout'),
                  onTap: () {
                    context.read<HomeBloc>().add(const LogOut());
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                BalanceCard(deposit: "${state.depositAmount}"),
                const TransactionButtons(),
                const TransactionsHistoryWidget(),
                state.transactions.isEmpty
                    ? Center(
                        child: Text(
                          "eWealth",
                          style: TextStyle(
                            color: Colors.green[100],
                            fontStyle: FontStyle.italic,
                            fontSize: 60,
                          ),
                        ),
                      )
                    : Column(
                        children: state.transactions.map((amount) {
                          return ListTile(
                            leading: amount['transaction'] == "Deposit"
                                ? const Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  )
                                : const Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                  ),
                            title: Text(amount['transaction'].toString()),
                            trailing: Text('R ${amount['amount']}'),
                          );
                        }).toList(),
                      )
              ],
            ),
          ),
        );
      },
    );
  }

  void _listener(BuildContext context, HomeState state) {
    state.logoutFailureFailureOrUnit.fold(() {}, (eitherFailureOrUnit) {
      eitherFailureOrUnit.fold(
        (failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Unable to logout'),
              backgroundColor: Colors.red,
            ),
          );
        },
        (_) {
          context.router.push(LoginRoute());
        },
      );
    });
  }
}
