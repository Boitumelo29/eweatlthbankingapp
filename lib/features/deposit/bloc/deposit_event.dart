part of 'deposit_bloc.dart';

// @freezed
// class DepositEvent with _$DepositEvent {
//   const factory DepositEvent.started() = _Started;
//   const factory DepositEvent.depositAmount() = _DepositAmount;
// }

sealed class DepositEvent {}

class DepositAmount extends DepositEvent {}
