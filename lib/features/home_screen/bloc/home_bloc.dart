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
      /// this is an api call, it should not be here
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

            final amounts = deposits[accountId] ?? [];
            final total = amounts.isNotEmpty
                ? amounts.reduce((a, b) => a + b)
                : 0;
            final transactions = amounts
                .map((amount) => {"bank": "Transaction", "amount": amount})
                .toList();

            emit(state.copyWith(
              depositAmount: total,
              transactions: transactions,
            ));
          } catch (e) {
            // handle error
          }
        }
      }
    });

    on<LogOut>((event, emit) async {
      final eitherFailureOrUnit = await authRepo.logout();

      eitherFailureOrUnit.fold((failure) {
        emit(state.copyWith(
            logoutFailureFailureOrUnit:
                some(left(Failure(message: "$failure")))));
      }, (_) {
        emit(state.copyWith(
            logoutFailureFailureOrUnit:
            some(right(_))));
      });
    });
  }
}
