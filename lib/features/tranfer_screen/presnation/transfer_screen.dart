import 'dart:math';

import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController accountNameController = TextEditingController();
  final TextEditingController accountNumberController = TextEditingController();
  final TextEditingController beneficiaryReferenceController =
      TextEditingController();
  final TextEditingController myReferenceController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  List<String> banks = ['FNB', 'Standard Bank', 'ABSA', 'Nedbank'];
  String? selectedBank;
  int currentBalance = 0;

  void initState() {
    super.initState();
    _loadDepositAmount();
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
            currentBalance = deposits[accountId]?.reduce((a, b) => a + b) ?? 0;
          });
        } catch (e) {}
      }
    }
  }

  Future<void> _processTransfer() async {
    if (!_formKey.currentState!.validate()) return;

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
                  return MapEntry(key, <int>[]);
                }
              },
            )
          : {};

      final int transferAmount = int.parse(amountController.text);

      if (!deposits.containsKey(accountId)) {
        deposits[accountId] = [];
      }

      deposits[accountId]!.add(-transferAmount);
      await prefs.setString('deposits', jsonEncode(deposits));

      final String? transactionsJson = prefs.getString('transactions');
      final List<Map<String, dynamic>> transactions = transactionsJson != null
          ? List<Map<String, dynamic>>.from(jsonDecode(transactionsJson))
          : [];

      transactions.add({
        'accountId': accountId,
        'amount': -transferAmount,
        'bank': selectedBank,
        'accountName': accountNameController.text,
        'date': DateTime.now().toIso8601String(),
        'type': 'transfer'
      });

      await prefs.setString('transactions', jsonEncode(transactions));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SuccessScreen()),
      );
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Current Balance: R$currentBalance",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                  labelText: 'Bank',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 1.0,
                    ),
                  ),
                ),
                value: selectedBank,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBank = newValue!;
                  });
                },
                items: banks.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) =>
                    value == null ? 'Please select a bank' : null,
              ),
              const SizedBox(height: 20),
              LongTextFieldForm(
                controller: accountNameController,
                hintText: "Account Name",
                labelText: "Account Name",
                showPrefixIcon: false,
                onChanged: (value) {},
                validator: (value) {
                  return Validation.textValidation(value);
                },
                showSuffixIcon: false,
                obsureText: false,
                isRed: true,
              ),
              const SizedBox(height: 20),
              LongTextFieldForm(
                controller: accountNumberController,
                hintText: 'Account Number',
                labelText: 'Account Number',
                showPrefixIcon: false,
                onChanged: (value) {},
                validator: (value) {
                  return Validation.textValidation(value);
                },
                showSuffixIcon: false,
                obsureText: false,
                isRed: true,
              ),
              const SizedBox(height: 20),
              LongTextFieldForm(
                controller: beneficiaryReferenceController,
                hintText: 'Beneficiary Reference',
                labelText: 'Beneficiary Reference',
                showPrefixIcon: false,
                onChanged: (value) {},
                validator: (value) {
                  return Validation.textValidation(value);
                },
                showSuffixIcon: false,
                obsureText: false,
                isRed: true,
              ),
              const SizedBox(height: 20),
              LongTextFieldForm(
                controller: myReferenceController,
                hintText: 'My Reference',
                labelText: 'My Reference',
                showPrefixIcon: false,
                onChanged: (value) {},
                validator: (value) {
                  return Validation.textValidation(value);
                },
                showSuffixIcon: false,
                obsureText: false,
                isRed: true,
              ),
              const SizedBox(height: 20),
              LongTextFieldForm(
                controller: amountController,
                hintText: 'Amount',
                labelText: 'Amount',
                showPrefixIcon: false,
                onChanged: (value) {},
                validator: (value) {
                  return Validation.textValidation(value);
                },
                showSuffixIcon: false,
                obsureText: false,
                isRed: true,
              ),
              const SizedBox(height: 20),
              LongButton(
                onTap: () {
                  _processTransfer();
                },
                title: "Transfer",
                isLoading: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacityAnimation;
  Animation<Offset>? _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeIn,
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: Offset(0, 0.05),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeOut,
      ),
    );

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StarryBackground(),
          FadeTransition(
            opacity: _opacityAnimation!,
            child: SlideTransition(
              position: _positionAnimation!,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Spacer(),
                  const Icon(Icons.check_circle_outline,
                      size: 100, color: Colors.green),
                  const SizedBox(height: 20),
                  const Text(
                    "Transfer success!!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Find the details in transactions page.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LongButton(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainHomeScreen()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      title: "Done",
                      isLoading: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StarryBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: StarPainter(),
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.green;
    var rng = Random();

    for (int i = 0; i < 100; i++) {
      var x = rng.nextDouble() * size.width;
      var y = rng.nextDouble() * size.height;
      canvas.drawCircle(Offset(x, y), rng.nextDouble() * 2, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class FailScreen extends StatefulWidget {
  @override
  _FailScreenState createState() => _FailScreenState();
}

class _FailScreenState extends State<FailScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacityAnimation;
  Animation<Offset>? _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeIn,
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: Offset(0, 0.05),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeOut,
      ),
    );

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StarryFailBackground(),
          FadeTransition(
            opacity: _opacityAnimation!,
            child: SlideTransition(
              position: _positionAnimation!,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Spacer(),
                  const Icon(Icons.cancel_outlined,
                      size: 100, color: Colors.red),
                  const SizedBox(height: 20),
                  const Text(
                    "Fail!!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Oops and error has occurred.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LongErrorButton(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TransferScreen()),
                        );
                      },
                      title: "Try Again",
                      isLoading: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StarryFailBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: StarFailPainter(),
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
    );
  }
}

class StarFailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.red;
    var rng = Random();

    for (int i = 0; i < 100; i++) {
      var x = rng.nextDouble() * size.width;
      var y = rng.nextDouble() * size.height;
      canvas.drawCircle(Offset(x, y), rng.nextDouble() * 2, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
