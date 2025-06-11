import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/deposit/domain/repo/voucher_service_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'deposit_event.dart';

part 'deposit_state.dart';

part 'deposit_bloc.freezed.dart';

class DepositBloc extends Bloc<DepositEvent, DepositState> {
  final AuthRepository authRepo;
  final VoucherServiceRepository voucherServiceRepository;

  DepositBloc(
      {required this.authRepo,
      required this.voucherServiceRepository})
      : super(DepositState.initial()) {
    on<DepositAmount>((event, emit) async {
      emit(state.copyWith(depositIsLoading: true));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      //we get the accountID which is the email
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

        final int depositAmount = int.parse(event.amount);

        if (!deposits.containsKey(accountId)) {
          deposits[accountId] = [];
        }

        ///here we are adding deposit to the account ID
        ///we need to add that it is a deposit as well or not, we can always just filter it out in the bloc instead
        deposits[accountId]!.add(depositAmount);

        ///here is where we make the call to set the deposit
        await prefs.setString('deposits', jsonEncode(deposits));

        emit(state.copyWith(
            depositIsLoading: false,
            depositAmountFailureFailureOrUnit: some(right(unit))));
      } catch (e) {
        emit(state.copyWith(
            depositIsLoading: false,
            depositAmountFailureFailureOrUnit:
                some(left(const Failure(message: "error")))));

        print(e);
      }
    });

    on<LoadUser>((event, emit) async {
      emit(state.copyWith(
        isLoadingUser: true,
        errorMessage: null,
      ));

      final userData = await authRepo.loadUserData();

      if (userData != null) {
        emit(state.copyWith(
          userName: userData['userName'],
          accountNumber: userData['accountNumber'],
          isLoadingUser: false,
          errorMessage: null,
        ));
      } else {
        emit(state.copyWith(
          isLoadingUser: false,
          errorMessage: 'Failed to load user',
        ));
      }
    });

    on<RedeemVoucher>((event, emit) async {
      try {
        final newResponse = await voucherServiceRepository
            .redeemVoucher(event.voucher);

        final amount =
        newResponse['amount'] as int;

        add(DepositEvent.depositAmount(amount: amount.toString()));
        print('Redeemed amount: $amount');

        emit(state.copyWith(accountNumber: amount.toString()));
      } catch (e) {
        print('Error redeeming voucher: $e');

        // emit(state.copyWith(error: e.toString()));
      }
    });
  }
}
