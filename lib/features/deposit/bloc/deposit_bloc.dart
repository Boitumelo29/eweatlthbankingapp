import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'deposit_event.dart';
part 'deposit_state.dart';
part 'deposit_bloc.freezed.dart';

class DepositBloc extends Bloc<DepositEvent, DepositState> {

  final AuthRepository authRepo;

  DepositBloc({required this.authRepo}) : super(DepositState.initial()) {
    on<DepositAmount>((event, emit) async{

      emit(state.copyWith(depositIsLoading: true));

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

        final int depositAmount = int.parse(event.amount);

        if (!deposits.containsKey(accountId)) {
          deposits[accountId] = [];
        }

        deposits[accountId]!.add(depositAmount);

        await prefs.setString('deposits', jsonEncode(deposits));


        emit(state.copyWith(depositIsLoading: false, depositAmountFailureFailureOrUnit: some(right(unit))));
      } catch (e) {
        emit(state.copyWith(depositIsLoading: false, depositAmountFailureFailureOrUnit: some(left(const Failure(message: "error")))));

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

  }
}
