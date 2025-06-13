import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: RedeemVoucherScreen(),
    );
  }
}

// class VoucherService {
//   static const String _baseUrl = 'http://localhost:8080/api/vouchers';
//   static const String _baseUrl1 = 'http://localhost:8081/api/vouchers';
//
//   static Future<String> redeemVoucher(String code) async {
//     final url = Uri.parse('$_baseUrl1/redeem?code=$code');
//
//     try {
//       final response = await http.post(url);
//
//       if (response.statusCode == 200) {
//         return response.body;
//       } else {
//         return 'Error: ${response.body}';
//       }
//     } catch (e) {
//       return 'Failed to connect: $e';
//     }
//   }
// }

class VoucherService {
  static const String _baseUrl1 = 'http://localhost:8081/api/vouchers';

  static Future<Map<String, dynamic>> redeemVoucher(String code) async {
    final url = Uri.parse('$_baseUrl1/redeem');

    try {
      final response = await http.post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'code': code})
      );

      if (response.statusCode == 200) {
        // Parse the JSON response into a Map
        return jsonDecode(response.body);
      } else {
        throw Exception('Error: ${response.body}');
      }
    } catch (e) {
      throw Exception('Failed to connect: $e');
    }
  }
}

//
// class RedeemVoucherScreen extends StatefulWidget {
//   const RedeemVoucherScreen({super.key});
//
//   @override
//   State<RedeemVoucherScreen> createState() => _RedeemVoucherScreenState();
// }
//
// class _RedeemVoucherScreenState extends State<RedeemVoucherScreen> {
//   final TextEditingController _codeController = TextEditingController();
//   String _result = '';
//
//   Future<void> _redeem() async {
//     final code = _codeController.text.trim();
//     if (code.isEmpty) {
//       setState(() => _result = 'Enter a voucher code');
//       return;
//     }
//
//     final res = await VoucherService.redeemVoucher(code);
//     setState(() => _result = res);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Redeem Voucher')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _codeController,
//               decoration: const InputDecoration(
//                 labelText: 'Enter Voucher Code',
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _redeem,
//               child: const Text('Redeem'),
//             ),
//             const SizedBox(height: 20),
//             Text(_result),
//           ],
//         ),
//       ),
//     );
//   }
// }
