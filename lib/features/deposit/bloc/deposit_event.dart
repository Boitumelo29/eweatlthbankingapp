part of 'deposit_bloc.dart';

@freezed
class DepositEvent with _$DepositEvent {
  const factory DepositEvent.started() = _Started;
  const factory DepositEvent.depositAmount({required String amount}) = DepositAmount;
  const factory DepositEvent.loadUser() = LoadUser;
  const factory DepositEvent.redeemVoucher({required String voucher}) = RedeemVoucher;
}
