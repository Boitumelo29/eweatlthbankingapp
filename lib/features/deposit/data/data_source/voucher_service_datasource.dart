import 'dart:convert';

import 'package:eweatlthbankingapp/features/deposit/domain/repo/voucher_service_repo.dart';
import 'package:http/http.dart' as http;

// abstract class VoucherServiceDataSource {
//   Future<VoucherServiceResponseModel> redeemVoucher(String code);
// }

class VoucherServiceDatasourceImpl implements VoucherServiceRepository {
  @override
  Future<Map<String, dynamic>> redeemVoucher(String code) async {
    const String baseUrl1 = 'http://localhost:8081/api/vouchers';

    final url = Uri.parse('$baseUrl1/redeem');

    try {
      final response = await http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'code': code}));

      if (response.statusCode == 200) {
        // Parse the JSON response into a Map
        print(response.body);
        return jsonDecode(response.body);
      } else {
        print('Error: ${response.body}');
        throw Exception('Error: ${response.body}');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to connect: $e');
    }
  }
}
