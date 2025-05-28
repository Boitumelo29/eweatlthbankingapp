part of 'beneficiary_bloc.dart';

@freezed
class BeneficiaryEvent with _$BeneficiaryEvent {
  const factory BeneficiaryEvent.started() = _Started;

  const factory BeneficiaryEvent.getAllUsers() = GetAllUsers;

  const factory BeneficiaryEvent.deleteUser() = DeleteUser;

  const factory BeneficiaryEvent.editUser() = EditUser;

  const factory BeneficiaryEvent.amountTransferred(
      {required String selectedBank,
      required String accountName,
      required String accountNumber,
      required String amount}) = AmountTransferred;

  const factory BeneficiaryEvent.loadAmount() = LoadAmount;
}
