import 'package:flutter/material.dart';


class TransactionsHistoryWidget extends StatelessWidget {
  const TransactionsHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Transactions'),
      trailing: TextButton(
        onPressed: null,
        child: Text(
          'History',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
