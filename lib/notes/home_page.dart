import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/deposit_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presentation/transfer_screen.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePageState();
}

class _HomePageState extends State<HomePages> {
  int depositAmount = 0;
  List<Map<String, dynamic>> transactions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white10,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
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

                      ///todo we need to remove
                      Text(
                        'R $depositAmount',
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: Colors.green,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ///todo remove
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
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildActionButton(Icons.add, 'Deposit', () {
                    ///todo run build runner
                   // context.router.push(DepositRoute());
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
            ),
            const ListTile(
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
            ),
            transactions.isEmpty
                ? Column(
                    children: [
                      const SizedBox(height: 120),
                      Center(
                        child: Text(
                          "eWealth",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green[100],
                              fontStyle: FontStyle.italic,
                              fontSize: 60),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: transactions.map((transaction) {
                      return ListTile(
                        leading: const Icon(Icons.account_balance_wallet),
                        title: Text(transaction['bank']),
                        trailing: Text('R ${transaction['amount']}'),
                      );
                    }).toList(),
                  ),
          ],
        ),
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
