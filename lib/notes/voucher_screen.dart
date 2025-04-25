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
      home: RedeemVoucherScreen(),
    );
  }
}

class VoucherService {
  static const String _baseUrl = 'http://localhost:8080/api/vouchers';

  static Future<String> redeemVoucher(String code) async {
    final url = Uri.parse('$_baseUrl/redeem?code=$code');

    try {
      final response = await http.post(url);

      if (response.statusCode == 200) {
        return response.body; // e.g. "Voucher R60 redeemed"
      } else {
        return 'Error: ${response.body}';
      }
    } catch (e) {
      return 'Failed to connect: $e';
    }
  }
}

class RedeemVoucherScreen extends StatefulWidget {
  const RedeemVoucherScreen({super.key});

  @override
  State<RedeemVoucherScreen> createState() => _RedeemVoucherScreenState();
}

class _RedeemVoucherScreenState extends State<RedeemVoucherScreen> {
  final TextEditingController _codeController = TextEditingController();
  String _result = '';

  Future<void> _redeem() async {
    final code = _codeController.text.trim();
    if (code.isEmpty) {
      setState(() => _result = 'Enter a voucher code');
      return;
    }

    final res = await VoucherService.redeemVoucher(code);
    setState(() => _result = res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Redeem Voucher')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _codeController,
              decoration: const InputDecoration(
                labelText: 'Enter Voucher Code',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _redeem,
              child: const Text('Redeem'),
            ),
            const SizedBox(height: 20),
            Text(_result),
          ],
        ),
      ),
    );
  }
}
