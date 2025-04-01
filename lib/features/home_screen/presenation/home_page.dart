import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/screens/appBar_layout/app_bar_screen.dart';
import 'package:eweatlthbankingapp/features/auth/auth.dart';
import 'package:eweatlthbankingapp/features/home_screen/bloc/home_bloc.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/widget/balance_card.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/widget/transaction_buttons.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/widget/transactions_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

@RoutePage()
class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int depositAmount = 0;
  List<Map<String, dynamic>> transactions = [];
  String? userName;
  String? accountNumber;

  @override
  void initState() {
    super.initState();
    //_loadUserData();
    //_loadDepositAmount();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return AppBarScreen(
          shouldScroll: true,
          title: "Home",
          appBarChildren: [
            IconButton(
              icon: const Icon(Icons.exit_to_app),

              ///here we are saying add this bloc and read this bloc we might need to re-look this
              onPressed: () => context.read<HomeBloc>().add(Logout()),
            ),
          ],
          shouldHaveFloatingButton: false,
          shouldBeCentered: true,
          children: [
            //todo convert to int
            BalanceCard(deposit: "$depositAmount"),
            const TransactionButtons(),
            const TransactionsHistoryWidget(),

            ///todo here I would need to use bloc to sort this part put
            transactions.isEmpty
                ? Column(
                    children: [
                      const SizedBox(height: 120),
                      Center(
                        child: Text(
                          "eWealth",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green[100],
                              fontStyle: FontStyle.italic,
                              fontSize: 60),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: transactions.map((transaction) {
                      return ListTile(
                        leading: const Icon(Icons.account_balance_wallet),
                        title: Text(transaction['bank']),
                        trailing: Text('R ${transaction['amount']}'),
                      );
                    }).toList(),
                  ),
          ],
        );
      },
    );
  }

  Future<void> _loadUserData() async {
    ///todo we moved this to the auth
  }

  //here we are doing something
  //we are loading the deposit amount from out database
  // we can use bloc for this
  // we can ise the state to fetch the  amount so eg. state.accountId
  //this is already in out database so we dont need it here
  //this is where clean archtechure comes into play

  Future<void> _loadDepositAmount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final accountId = prefs.getString('accountId');

    if (accountId != null && accountId.isNotEmpty) {
      final depositsJson = prefs.getString('deposits');
      if (depositsJson != null) {
        try {
          final Map<String, List<int>> deposits =
              (jsonDecode(depositsJson) as Map<String, dynamic>).map(
            (key, value) {
              if (value is List<dynamic>) {
                return MapEntry(key, List<int>.from(value));
              } else {
                return MapEntry(key, <int>[]);
              }
            },
          );

          setState(() {
            depositAmount = deposits[accountId]?.reduce((a, b) => a + b) ?? 0;
            transactions = deposits[accountId]
                    ?.map((amount) => {
                          "bank": "Transaction",
                          "amount": amount,
                        })
                    .toList() ??
                [];
          });
        } catch (e) {
          throw e;
        }
      }
    }
  }
}
