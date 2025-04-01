import 'dart:convert';

import 'package:auto_route/annotations.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/deposit/presentation/page/payement_success_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class DepositPage extends StatefulWidget {
  const DepositPage({super.key});

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  @override
  void initState() {
    ///move to data file or auth repo, then use auth repo to get the users email account.
    super.initState();

    // SharedPreferences.getInstance().then((prefs) {
    //   final accountId = prefs.getString('accountId') ?? '';
    //   if (accountId.isNotEmpty) {
    //     fetchUserDetails(accountId);
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text('Account ID not found')),
    //     );
    //   }
    // });
  }

  /// we are no longer going to do this, we are going to get the user through the auth
  ///
  String? userName;
  String? accountNumber;
  bool isLoadingUser = true;

  // Future<void> fetchUserDetails(String accountId) async {
  //   setState(() {
  //     isLoadingUser = true;
  //   });
  //
  //   try {
  //     final SharedPreferences prefs = await SharedPreferences.getInstance();
  //     final String? userDataJson = prefs.getString('userData');
  //
  //     if (userDataJson != null) {
  //       final userData = jsonDecode(userDataJson);
  //       setState(() {
  //         userName = '${userData['firstName']} ${userData['lastName']}';
  //         accountNumber = userData['email'];
  //       });
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(content: Text('User data not found')),
  //       );
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Error: $e')),
  //     );
  //   } finally {
  //     setState(() {
  //       isLoadingUser = false;
  //     });
  //   }
  // }

  final TextEditingController _amountController = TextEditingController();

  void _onKeypadTap(String value) {
    setState(() {
      if (value == 'Del') {
        if (_amountController.text.isNotEmpty) {
          _amountController.text = _amountController.text
              .substring(0, _amountController.text.length - 1);
        }
      } else if (value.isNotEmpty) {
        _amountController.text += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> keys = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "",
      "0",
      "Del"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deposit"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildUserInfo(),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 0.7,
                    )),
                labelText: 'Amount',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 0.7,
                    )),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 0.7,
                    )),
                prefixText: 'R',
              ),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: keys.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (keys[index].isEmpty) {
                    return Container(); // Return an empty container for the blank space
                  }
                  return GestureDetector(
                    onTap: () => _onKeypadTap(keys[index]),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(keys[index],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  );
                },
              ),
            ),
            LongButton(
                onTap: () {
                  if (_amountController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter an amount to deposit'),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }
                  _amountDeposit();
                },
                title: "Deposit",
                isLoading: false),
          ],
        ),
      ),
    );
  }

  Future<void> _amountDeposit() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final accountId = prefs.getString('accountId');

    if (accountId == null || accountId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Account ID not found')),
      );
      return;
    }

    try {
      final String? depositsJson = prefs.getString('deposits');
      final Map<String, List<int>> deposits = depositsJson != null
          ? (jsonDecode(depositsJson) as Map<String, dynamic>).map(
              (key, value) {
                if (value is List<dynamic>) {
                  return MapEntry(key, List<int>.from(value));
                } else {
                  return MapEntry(key, <int>[]); // Fallback to empty list
                }
              },
            )
          : {};

      final int depositAmount = int.parse(_amountController.text);

      if (!deposits.containsKey(accountId)) {
        deposits[accountId] = [];
      }

      deposits[accountId]!.add(depositAmount);

      await prefs.setString('deposits', jsonEncode(deposits));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PaymentSuccessScreen()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  Widget buildUserInfo() {
    if (isLoadingUser) {
      return const Row(
        children: <Widget>[
          Icon(Icons.person),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Loading",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "****** ****** ****",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.check_circle, color: Colors.green),
        ],
      );
    }

    if (userName == null || accountNumber == null) {
      return const Center(child: Text('Failed to load user details'));
    }

    return Row(
      children: <Widget>[
        const Icon(Icons.person),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                userName ?? "username",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "****** ****** 1234",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const Icon(Icons.check_circle, color: Colors.green),
      ],
    );
  }
}
