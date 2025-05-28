import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'beneficiary_event.dart';

part 'beneficiary_state.dart';

part 'beneficiary_bloc.freezed.dart';

class BeneficiaryBloc extends Bloc<BeneficiaryEvent, BeneficiaryState> {
  final BeneficiaryRepository beneficiaryRepository;

  BeneficiaryBloc({required this.beneficiaryRepository})
      : super(BeneficiaryState.initial()) {
    ///here is where we get all the users and emit them
    on<BeneficiaryEvent>((event, emit) async {});
    on<DeleteUser>((event, emit) async {});
    on<EditUser>((event, emit) async {});
    on<AmountTransferred>((event, emit) async {
      emit(state.copyWith(
          transferIsLoading: true,
          transferAmountFailureFailureOrUnit: const None()));

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
          'accountNumber': event.accountNumber,
          'date': DateTime.now().toIso8601String(),
          'type': 'transfer'
        });

        await prefs.setString('transactions', jsonEncode(transactions));
        emit(state.copyWith(
            transferIsLoading: false,
            transferAmountFailureFailureOrUnit: some(right(unit))));
      } catch (e) {
        emit(state.copyWith(
            transferIsLoading: false,
            transferAmountFailureFailureOrUnit:
            some(left(const Failure(message: "failure")))));
      }
    });
    on<LoadAmount>((event, emit) async {
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
    on<GetAllUsers>((event, emit) async {
      final useResult = await beneficiaryRepository.getAllBeneficiaries();
      emit(state.copyWith(usersList: useResult));
    });
  }
}
