part of 'transfer_bloc.dart';

@freezed
class TransferEvent with _$TransferEvent {
  const factory TransferEvent.started() = _Started;

  const factory TransferEvent.loadDeposit() = LoadDeposit;

  const factory TransferEvent.processTransfer(
      {required String selectedBank,
      required String accountName,
      required String accountNumber,
      required String amount}) = ProcessTransfer;
}
