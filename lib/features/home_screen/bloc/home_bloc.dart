import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AuthRepository authRepo;

  HomeBloc({required this.authRepo}) : super(HomeState.initial()) {
    on<LoadDeposit>((event, emit) async {
      /// this is an api call, it should not be here, it should be in our data layer
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final accountId = prefs.getString('accountId');

      if (accountId != null && accountId.isNotEmpty) {
        final depositsJson = prefs.getString('deposits');
        final transactionsJson = prefs.getString("transactions");

        if (depositsJson != null) {
          try {
            final Map<String, List<int>> deposits =
                (jsonDecode(depositsJson) as Map<String, dynamic>).map(
              ///the key in this case is the ID, value is the values[] type list
              (key, value) {
                if (value is List<dynamic>) {
                  ///this here is printing all of the values of
                  return MapEntry(key, List<int>.from(value));
                } else {
                  return MapEntry(key, <int>[]);
                }
              },
            );

            if (transactionsJson != null) {
              final List<dynamic> allTransactions =
                  jsonDecode(transactionsJson);

              final List<Map<String, Object>> userTransactions = allTransactions
                  .where((transaction) => transaction['accountId'] == accountId)
                  .map((transaction) => {
                        'bank': transaction['bank'] as String,
                        'accountName': transaction['accountName'] as String,
                        //'accountNumber': transaction['accountNumber'] as String,
                        'amount': transaction['amount'] as int,
                        'date': transaction['date'] as String,
                        'type': transaction['type'] as String
                      })
                  .toList();

              // print("all: $allTransactions");
              // print("my user: $userTransactions");

              ///amount is just getting the values
              final amounts = deposits[accountId] ?? [];
              final deposit =
                  amounts.isNotEmpty ? amounts.reduce((a, b) => a + b) : 0;

              final transactions = amounts.map((amount) {
                if (amount.isNegative) {
                  final userTransaction = userTransactions.firstWhere(
                    (t) => t['amount'] == amount,
                    orElse: () =>
                        {'bank': 'Transaction', 'accountName': 'Transfer'},
                  );
                  return <String, Object>{
                    "transaction": userTransaction['accountName'] as String,
                    "amount": amount,
                  };
                } else {
                  return <String, Object>{
                    "transaction": "Deposit",
                    "amount": amount,
                  };
                }
              }).toList();

              ///here we are printing the latest transaction
              emit(state.copyWith(
                depositAmount: deposit,
                transactions: transactions.reversed,
              ));
            }
          } catch (e) {
            // handle error
          }
        }
      }
    });

    on<LoadUser>((event, emit) async {
      final userData = await authRepo.loadUserData();

      if (userData != null) {
        emit(state.copyWith(
          userName: userData['userName'],
          accountNumber: userData['accountNumber'],
        ));
      } else {
        emit(state.copyWith(
          userName: "unknown user",
          accountNumber: "unknown account",
        ));
      }
    });

    on<LogOut>((event, emit) async {
      final eitherFailureOrUnit = await authRepo.logout();

      eitherFailureOrUnit.fold((failure) {
        emit(state.copyWith(
            logoutFailureFailureOrUnit:
                some(left(Failure(message: "$failure")))));
      }, (_) {
        emit(state.copyWith(logoutFailureFailureOrUnit: some(right(_))));
      });
    });
  }
}
