import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/repo.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/reponse_model.dart';

class AddBeneficiaryUseCase {
  final BeneficiaryRepository repository;
  AddBeneficiaryUseCase(this.repository);

  Future<void> call(Beneficiary beneficiary) {
    return repository.addBeneficiary(beneficiary);
  }
}

class GetAllBeneficiariesUseCase {
  final BeneficiaryRepository repository;
  GetAllBeneficiariesUseCase(this.repository);

  Future<List<Beneficiary>> call() {
    return repository.getAllBeneficiaries();
  }
}
