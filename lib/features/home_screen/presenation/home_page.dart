import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/features/auth/auth.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/deposit_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presentation/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

@RoutePage()
class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int depositAmount = 0;
  List<Map<String, dynamic>> transactions = [];
  String? userName;
  String? accountNumber;

  @override
  void initState() {
    super.initState();
    _loadUserData();
    _loadDepositAmount();
  }

  Future<void> _loadUserData() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userDataJson = prefs.getString('userData');

      if (userDataJson != null) {
        final userData = jsonDecode(userDataJson);
        setState(() {
          userName = '${userData['firstName']} ${userData['lastName']}';
          accountNumber = userData['email'];
        });
      }
    } catch (e) {
      print('Error loading user data: $e');
    }
  }

  Future<void> _loadDepositAmount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final accountId = prefs.getString('accountId');

    if (accountId != null && accountId.isNotEmpty) {
      final depositsJson = prefs.getString('deposits');
      if (depositsJson != null) {
        try {
          final Map<String, List<int>> deposits =
              (jsonDecode(depositsJson) as Map<String, dynamic>).map(
            (key, value) {
              if (value is List<dynamic>) {
                return MapEntry(key, List<int>.from(value));
              } else {
                return MapEntry(key, <int>[]);
              }
            },
          );

          setState(() {
            depositAmount = deposits[accountId]?.reduce((a, b) => a + b) ?? 0;
            transactions = deposits[accountId]
                    ?.map((amount) => {
                          "bank": "Transaction",
                          "amount": amount,
                        })
                    .toList() ??
                [];
          });
        } catch (e) {
          print('Error loading deposits: $e');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => logoutUser(context),
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
                          Text('**** **** **** 1234'),
                          const Icon(
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

  Future<void> logoutUser(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
    await prefs.remove('accountId');
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const AuthPage()));
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
