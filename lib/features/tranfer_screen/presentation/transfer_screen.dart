import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/bloc/transfer_bloc.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


@RoutePage()
class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransferBloc>(
      create: (context) => TransferBloc()..add(const LoadDeposit()),
      // TransferBloc(authRepo: AuthRepository())..add(const LoadUser()),
      child: const TransferView(),
    );
  }
}

class TransferView extends StatefulWidget {
  const TransferView({super.key});

  @override
  State<TransferView> createState() => _TransferViewState();
}

class _TransferViewState extends State<TransferView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController accountNameController = TextEditingController();
  final TextEditingController accountNumberController = TextEditingController();
  final TextEditingController beneficiaryReferenceController =
      TextEditingController();
  final TextEditingController myReferenceController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  List<String> banks = ['FNB', 'Standard Bank', 'ABSA', 'Nedbank'];
  String? selectedBank;



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransferBloc, TransferState>(
      listener: (context, state) {
        state.processTransferFailureFailureOrUnit.fold(() {}, (eitherFailureOrUnit) {
          eitherFailureOrUnit.fold(
                (failure) {
              context.router.push(const PaymentFailureRoute());
            },
                (_) {
              context.router.push(const PaymentSuccessRoute());
            },
          );
        });
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Transfer'),
          ),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Current Balance: R${state.currentBalance}",
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
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
                      if (value == null || value.isEmpty) {
                        return 'Please enter an amount';
                      }
                      try {
                        int amount = int.parse(value);
                        if (amount <= 0) {
                          return 'Amount must be greater than 0';
                        }
                        if (amount > state.currentBalance) {
                          return 'Amount exceeds current balance';
                        }
                      } catch (e) {
                        return 'Please enter a valid number';
                      }
                      return null;
                    },
                    showSuffixIcon: false,
                    obsureText: false,
                    isRed: true,
                  ),
                  const SizedBox(height: 20),
                  LongButton(
                    onTap: () {
                      if (!_formKey.currentState!.validate()) return;
                      context.read<TransferBloc>().add(ProcessTransfer(
                          selectedBank: selectedBank.toString(),
                          accountName: accountNameController.text,
                          amount: amountController.text));
                      // _processTransfer();
                    },
                    title: "Transfer",
                    isLoading: false,
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeIn,
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: const Offset(0, 0.05),
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
                              builder: (context) => const MainHomePage()),
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
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeIn,
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: const Offset(0, 0.05),
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
                        context.router.push(const TransferRoute());
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
  const StarryFailBackground({super.key});

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
