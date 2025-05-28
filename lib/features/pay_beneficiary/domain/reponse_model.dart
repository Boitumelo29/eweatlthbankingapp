class Beneficiary {
  final String accountName;
  final String accountNumber;
  final String bank;

  Beneficiary({
    required this.accountName,
    required this.accountNumber,
    required this.bank,
  });

  Map<String, dynamic> toJson() => {
    'accountName': accountName,
    'accountNumber': accountNumber,
    'bank': bank,
  };

  factory Beneficiary.fromJson(Map<String, dynamic> json) => Beneficiary(
    accountName: json['accountName'],
    accountNumber: json['accountNumber'],
    bank: json['bank'],
  );
}
