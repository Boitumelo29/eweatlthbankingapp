import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:flutter/material.dart';

class TransactionButtons extends StatelessWidget {
  const TransactionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildActionButton(Icons.add, 'Deposit', () {
            context.router.push(const DepositRoute());
          }),
          _buildActionButton(Icons.send, 'Transfer', () {
            context.router.push(const TransferRoute());
          }),
          _buildActionButton(Icons.person_add_alt_1_rounded, 'Pay beneficiary',
              () {
            ///we need to push to list of users
            context.router.push(const BeneficiaryListRoute());
          }),

          ///here we scan to pay
          // _buildActionButton(Icons.document_scanner, 'Pay', () {
          //   // context.router.push(const DepositRoute());
          // }),
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
