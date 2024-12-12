import 'dart:math';

import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

import '../../home_scree/presenation/home_page.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
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
              // Ensure the value is a list and convert it to a List<int>
              if (value is List<dynamic>) {
                return MapEntry(key, List<int>.from(value));
              } else {
                return MapEntry(key, <int>[]); // Fallback to an empty list
              }
            },
          );

          setState(() {
            currentBalance = deposits[accountId]?.reduce((a, b) => a + b) ?? 0;
          });
        } catch (e) {
        }
      }
    }
  }
  Future<void> _processTransfer() async {
    if (!_formKey.currentState!.validate()) return;

    final int transferAmount = int.parse(amountController.text);

    if (transferAmount > currentBalance) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Insufficient balance'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final accountId = prefs.getString('accountId');

    if (accountId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Account ID not found'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      // Parse and validate deposits
      final depositsJson = prefs.getString('deposits');
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

      // Ensure the account has a deposit list
      if (!deposits.containsKey(accountId)) {
        deposits[accountId] = [];
      }

      // Deduct transfer amount
      deposits[accountId]?.add(-transferAmount);

      // Update SharedPreferences with the new deposits
      await prefs.setString('deposits', jsonEncode(deposits));

      // Prepare API payload
      final transferPayload = {
        "amount": transferAmount,
        "accountName": accountNameController.text,
        "beneficiaryReference": beneficiaryReferenceController.text,
        "bank": selectedBank ?? '',
        "myReference": myReferenceController.text,
        "accNumber": int.parse(accountNumberController.text),
      };

      final response = await http.post(
        Uri.parse(
            'https://94a9-41-193-50-201.ngrok-free.app/api/transactions/transfer'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": accountId,
        },
        body: jsonEncode(transferPayload),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SuccessScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Transfer failed: ${response.body}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
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
                      color: Colors.green, // Default border color
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.green,
                      // Border color when the field is focused
                      width: 2.0,
                    ),
                  ),
                  labelText: 'Bank',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.green, // Default border color
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

              ///todo you can not transfer anything about the amout so I need to do a check here
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

              ///todo you need to use the number textfield or creat a custome textfield
              const SizedBox(height: 20),
              LongButton(
                onTap: () {
                  _processTransfer();
                  //we need to clear over here
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SuccessScreen()),
                  // );
                  // if (_formKey.currentState!.validate()) {
                  //   // Here you would usually send the data to the backend or your database
                  //   showDialog(
                  //     context: context,
                  //     builder: (context) => AlertDialog(
                  //       title: Text('Success'),
                  //       content: Text('Transfer initiated successfully'),
                  //       actions: <Widget>[
                  //         TextButton(
                  //           onPressed: () {
                  //             Navigator.of(context).pop();
                  //           },
                  //           child: Text('OK'),
                  //         ),
                  //       ],
                  //     ),
                  //   );
                  // }
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
      begin: Offset(0, 0.05), // slight vertical offset
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
                    style: TextStyle(
                        // color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // const Text(
                  //   "You transferred €900 to Brooklyn Simmons.",
                  //   style: TextStyle(fontSize: 18),
                  // ),
                  const Text(
                    "Find the details in transactions page.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LongButton(
                      ///we send them to the home screen insted over here
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainHomeScreen()),
                          (Route<dynamic> route) =>
                              false, // This predicate will always return false, removing all routes
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
      begin: Offset(0, 0.05), // slight vertical offset
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
                    style: TextStyle(
                        // color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // const Text(
                  //   "You transferred €900 to Brooklyn Simmons.",
                  //   style: TextStyle(fontSize: 18),
                  // ),
                  const Text(
                    "Oops and error has occurred.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LongErrorButton(
                      ///we send them to the home screen insted over here
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TransferScreen()),
                          // This predicate will always return false, removing all routes
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

// {
//   final _formKey = GlobalKey<FormState>();
//   List<String> banks = ['FNB', 'Standard Bank', 'ABSA', 'Nedbank'];
//   String? selectedBank;
//   TextEditingController accountNameController = TextEditingController();
//   TextEditingController accountNumberController = TextEditingController();
//   TextEditingController beneficiaryReferenceController =
//       TextEditingController();
//   TextEditingController myReferenceController = TextEditingController();
//   TextEditingController amountController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Money Transfer'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   labelText: 'Bank',
//                   border: OutlineInputBorder(),
//                 ),
//                 value: selectedBank,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     selectedBank = newValue!;
//                   });
//                 },
//                 items: banks.map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 validator: (value) =>
//                     value == null ? 'Please select a bank' : null,
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: accountNameController,
//                 decoration: InputDecoration(
//                   labelText: 'Account Name',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter account name';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: accountNumberController,
//                 decoration: InputDecoration(
//                   labelText: 'Account Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter account number';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: beneficiaryReferenceController,
//                 decoration: InputDecoration(
//                   labelText: 'Beneficiary Reference',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter beneficiary reference';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: myReferenceController,
//                 decoration: InputDecoration(
//                   labelText: 'My Reference',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your reference';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: amountController,
//                 decoration: InputDecoration(
//                   labelText: 'Amount',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter an amount';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Here you would usually send the data to the backend or your database
//                     showDialog(
//                       context: context,
//                       builder: (context) => AlertDialog(
//                         title: Text('Success'),
//                         content: Text('Transfer initiated successfully'),
//                         actions: <Widget>[
//                           TextButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('OK'),
//                           ),
//                         ],
//                       ),
//                     );
//                   }
//                 },
//                 child: Text('Transfer Money'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
