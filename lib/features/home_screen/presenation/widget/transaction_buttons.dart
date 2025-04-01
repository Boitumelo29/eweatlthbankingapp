import 'package:eweatlthbankingapp/features/deposit/presentation/page/deposit_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presentation/transfer_screen.dart';
import 'package:flutter/material.dart';

class TransactionButtons extends StatelessWidget {
  const TransactionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildActionButton(Icons.add, 'Deposit', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DepositPage()));
          }),
          _buildActionButton(Icons.send, 'Transfer', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferScreen()));
          }),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 30,
            color: Colors.green,
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
