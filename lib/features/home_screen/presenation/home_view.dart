import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/screens/appBar_layout/app_bar_screen.dart';
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
        return AppBarScreen(
          title: "Home",
          shouldScroll: true,
          shouldHaveFloatingButton: false,
          shouldBeCentered: true,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text(
                    'Username',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
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
            ///reverse list
                : Column(
              children: state.transactions.map((amount) {
                return ListTile(
                  leading: const Icon(Icons.account_balance_wallet),
                  title: Text(amount['bank']),
                  trailing: Text('R ${amount['amount']}'),
                );
              }).toList(),
            )
          ],
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