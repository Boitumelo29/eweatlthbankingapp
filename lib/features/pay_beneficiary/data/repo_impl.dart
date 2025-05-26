import 'dart:convert';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/repo.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/reponse_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BeneficiaryRepositoryImpl implements BeneficiaryRepository {
  static const _key = 'beneficiaries';

  @override
  Future<void> addBeneficiary(Beneficiary beneficiary) async {
    final prefs = await SharedPreferences.getInstance();
    final stored = prefs.getStringList(_key) ?? [];

    stored.add(jsonEncode(beneficiary.toJson()));
    await prefs.setStringList(_key, stored);
  }

  @override
  Future<List<Beneficiary>> getAllBeneficiaries() async {
    final prefs = await SharedPreferences.getInstance();
    final stored = prefs.getStringList(_key) ?? [];

    return stored
        .map((item) => Beneficiary.fromJson(jsonDecode(item)))
        .toList();
  }

  @override
  Future<void> removeBeneficiary(String accountNumber) async {
    final prefs = await SharedPreferences.getInstance();
    final stored = prefs.getStringList(_key) ?? [];

    final updated = stored.where((item) {
      final b = Beneficiary.fromJson(jsonDecode(item));
      return b.accountNumber != accountNumber;
    }).toList();

    await prefs.setStringList(_key, updated);
  }
}
