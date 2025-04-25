part of 'deposit_bloc.dart';

@freezed
class DepositState with _$DepositState {
  const factory DepositState({
    required bool isLoadingUser,
    @Default(false) bool depositIsLoading,
    String? userName,
    String? redeemedVoucher,
    String? accountNumber,
    String? errorMessage,
    @Default(None())
    Option<Either<Failure, Unit>> depositAmountFailureFailureOrUnit,
  }) = _DepositState;

  factory DepositState.initial() => const DepositState(
      isLoadingUser: true,
      userName: null,
      accountNumber: null,
      errorMessage: null,
      depositIsLoading: false,
      redeemedVoucher: null,
      depositAmountFailureFailureOrUnit: None());
}
