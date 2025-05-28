import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/bloc/transfer_bloc.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slide_to_act/slide_to_act.dart';

@RoutePage()
class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransferBloc>(
      create: (context) =>
      TransferBloc()
        ..add(const LoadDeposit()),
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
  final GlobalKey<SlideActionState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    ///todo refactor code
    return BlocConsumer<TransferBloc, TransferState>(
      listener: (context, state) {
        state.processTransferFailureFailureOrUnit.fold(() {},
                (eitherFailureOrUnit) {
              eitherFailureOrUnit.fold(
                    (failure) {
                  context.router.push(const TransferFailureRoute());
                },
                    (_) {
                  context.router.push(const TransferSuccessRoute());
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
                    hintText: '',
                    labelText: 'Amount',
                    prefixText: "R",
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

                  SlideAction(
                    key: key,

                    ///here we are unable to use the form key to enable the button
                    // enabled: _formKey.currentState == null,
                    innerColor: Colors.white,
                    outerColor: Colors.green,
                    text: "Transfer",
                    sliderButtonIcon:
                    const Icon(Icons.keyboard_arrow_right_outlined),
                    // submittedIcon: Icon(Icons.corr),
                    onSubmit: () {
                      ///todo tumi review this
                      // print(_formKey.currentState == null);
                      // print(_formKey.currentState != null);
                      //
                      // if (_formKey.currentState != null) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text('Please complete form'),
                      //       backgroundColor: Colors.red,
                      //     ),
                      //   );
                      //   return;
                      // }
                      context.read<TransferBloc>().add(ProcessTransfer(
                          selectedBank: selectedBank.toString(),
                          accountName: accountNameController.text,
                          accountNumber: accountNumberController.text,
                          amount: amountController.text));
                    },
                  )

                  // LongButton(
                  //   onTap: () {
                  //     if (!_formKey.currentState!.validate()) return;
                  //     context.read<TransferBloc>().add(ProcessTransfer(
                  //         selectedBank: selectedBank.toString(),
                  //         accountName: accountNameController.text,
                  //         amount: amountController.text));
                  //     // _processTransfer();
                  //   },
                  //   title: "Transfer",
                  //   isLoading: false,
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
