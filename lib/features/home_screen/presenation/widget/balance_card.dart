import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String deposit;

  const BalanceCard({super.key, required this.deposit});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.5,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const Text(
                'Current balance',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Text(
                'R $deposit',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.green,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('**** **** **** 1234'),
                  Icon(
                    Icons.credit_card,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
