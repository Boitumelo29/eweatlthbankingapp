class TransferModel {
  final int amount;
  final String accountName;
  final String beneficiaryReference;
  final String bank;
  final String myReference;
  final String accNumber;
  final DateTime transactionDate;

  TransferModel({
    required this.amount,
    required this.accountName,
    required this.beneficiaryReference,
    required this.bank,
    required this.myReference,
    required this.accNumber,
    required this.transactionDate,
  });

  Map<String, dynamic> toJson() {
    return {
      "amount": amount,
      "accountName": accountName,
      "beneficiaryReference": beneficiaryReference,
      "bank": bank,
      "myReference": myReference,
      "accNumber": accNumber,
      "transactionDate": transactionDate.toIso8601String(),
    };
  }
}
