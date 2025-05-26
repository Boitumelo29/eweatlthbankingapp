import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/reponse_model.dart';

abstract class BeneficiaryRepository {
  Future<void> addBeneficiary(Beneficiary beneficiary);
  Future<List<Beneficiary>> getAllBeneficiaries();
  Future<void> removeBeneficiary(String accountNumber); // Optional
}
