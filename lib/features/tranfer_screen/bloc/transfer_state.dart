part of 'transfer_bloc.dart';

@freezed
class TransferState with _$TransferState {
  const factory TransferState({
    // required bool isLoadingUser,
    @Default(false) bool transferIsLoading,
    @Default(0) int currentBalance,
    @Default(None())
    Option<Either<Failure, Unit>> loadAmountFailureFailureOrUnit,
    @Default(None())
    Option<Either<Failure, Unit>> processTransferFailureFailureOrUnit,
  }) = _TransferState;

  factory TransferState.initial() => const TransferState();
}
