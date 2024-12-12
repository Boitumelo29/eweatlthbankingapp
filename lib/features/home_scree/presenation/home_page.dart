import 'package:eweatlthbankingapp/features/auth/auth.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/deposit_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presnation/transfer_screen.dart';
import 'package:eweatlthbankingapp/network/api_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class MainHomeScreen extends StatefulWidget {
  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int depositAmount = 0;
  final ApiService _apiService = ApiService();
  List<Map<String, dynamic>> transactions = []; // Store transaction data

  @override
  void initState() {
    super.initState();
    _loadDepositAmount();

    SharedPreferences.getInstance().then((prefs) {
      final accountId = prefs.getString('accountId') ?? '';
      if (accountId.isNotEmpty) {
        fetchTrans(accountId);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account ID not found')),
        );
      }
    });
  }

  fetchTrans(String accountId) async {
    try {
      final response = await _apiService.fetchUser(accountId);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          transactions = List<Map<String, dynamic>>.from(
              data['transactions'].map((transaction) => {
                    "bank": transaction['bank'],
                    "amount": transaction['amount'],
                  }));
        });
      }
    } catch (e) {
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
              // Ensure the value is a list and convert it to a List<int>
              if (value is List<dynamic>) {
                return MapEntry(key, List<int>.from(value));
              } else {
                return MapEntry(key, <int>[]); // Fallback to an empty list
              }
            },
          );

          setState(() {
            depositAmount = deposits[accountId]?.reduce((a, b) => a + b) ?? 0;
          });
        } catch (e) {
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
            icon: Icon(Icons.exit_to_app),
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

  Future<void> logoutUser(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
    await prefs.remove('userToken');
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
