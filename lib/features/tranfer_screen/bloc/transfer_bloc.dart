import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'transfer_event.dart';

part 'transfer_state.dart';

part 'transfer_bloc.freezed.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  TransferBloc() : super(TransferState.initial()) {
    on<TransferEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<ProcessTransfer>((event, emit) async {
      emit(state.copyWith(
          transferIsLoading: true,
          processTransferFailureFailureOrUnit: const None()));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final accountId = prefs.getString('accountId');

      if (accountId == null || accountId.isEmpty) {
        return;
      }

      try {
        final String? depositsJson = prefs.getString('deposits');
        final Map<String, List<int>> deposits = depositsJson != null
            ? (jsonDecode(depositsJson) as Map<String, dynamic>).map(
                (key, value) {
                  if (value is List<dynamic>) {
                    return MapEntry(key, List<int>.from(value));
                  } else {
                    return MapEntry(key, <int>[]);
                  }
                },
              )
            : {};

        final int transferAmount = int.parse(event.amount);

        if (!deposits.containsKey(accountId)) {
          deposits[accountId] = [];
        }

        deposits[accountId]!.add(-transferAmount);
        await prefs.setString('deposits', jsonEncode(deposits));

        final String? transactionsJson = prefs.getString('transactions');
        final List<Map<String, dynamic>> transactions = transactionsJson != null
            ? List<Map<String, dynamic>>.from(jsonDecode(transactionsJson))
            : [];

        transactions.add({
          'accountId': accountId,
          'amount': -transferAmount,
          'bank': event.selectedBank,
          'accountName': event.accountName,
          'date': DateTime.now().toIso8601String(),
          'type': 'transfer'
        });

        await prefs.setString('transactions', jsonEncode(transactions));
        emit(state.copyWith(
            transferIsLoading: false,
            processTransferFailureFailureOrUnit: some(right(unit))));
      } catch (e) {
        emit(state.copyWith(
            transferIsLoading: false,
            processTransferFailureFailureOrUnit:
                some(left(const Failure(message: "failure")))));
      }
    });
    on<LoadDeposit>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final accountId = prefs.getString('accountId');

      if (accountId != null && accountId.isNotEmpty) {
        ///Todo this is what I do,
        ///I dont really document the transactions instead I document the deposit
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

            emit(
              state.copyWith(
                  loadAmountFailureFailureOrUnit: some(right(unit)),
                  currentBalance:
                      deposits[accountId]?.reduce((a, b) => a + b) ?? 0),
            );
          } catch (e) {
            emit(state.copyWith(
                loadAmountFailureFailureOrUnit:
                    some(left(const Failure(message: "error")))));
          }
        }
      }
    });
  }
}
