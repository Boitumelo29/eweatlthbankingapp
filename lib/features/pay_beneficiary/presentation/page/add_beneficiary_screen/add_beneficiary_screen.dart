import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_rectangle_button.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/add_beneficary_bloc/add_beneficiary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBeneficiaryView extends StatefulWidget {
  const AddBeneficiaryView({super.key});

  @override
  State<AddBeneficiaryView> createState() => _AddBeneficiaryViewState();
}

class _AddBeneficiaryViewState extends State<AddBeneficiaryView> {
  late final TextEditingController accountNameController;
  late final TextEditingController accountNumberController;
  List<String> banks = ['FNB', 'Standard Bank', 'ABSA', 'Nedbank'];
  String? selectedBank;

  @override
  void initState() {
    super.initState();
    accountNameController = TextEditingController();
    accountNumberController = TextEditingController();
  }

  @override
  void dispose() {
    accountNameController.dispose();
    accountNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddBeneficiaryBloc, AddBeneficiaryState>(
      listener: (context, state) {
        // TODO: implement listener

        state.addingBeneficiaryFailureOrUnit.fold(() {}, (eitherFailureOrUnit) {
          eitherFailureOrUnit.fold((failure) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Unable to add user"),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 5),
            ));
          }, (_) {
            // context.router.push(const BeneficiaryListRoute());
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Successfully added user"),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 5),
            ));
          });
        });
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Add Beneficiary"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              spacing: 15,
              children: [
                /// we need the name:
                LongTextFieldForm(
                  controller: accountNameController,
                  isRed: false,
                  hintText: "Account Name",
                  labelText: "Account Name",
                  obsureText: false,
                  showPrefixIcon: true,
                  prefixIcon: Icons.person,
                  showSuffixIcon: false,
                  onChanged: (value) {},
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),
                LongTextFieldForm(
                  isRed: false,
                  controller: accountNumberController,
                  hintText: "Account Number",
                  labelText: "Account Number",
                  obsureText: false,
                  showPrefixIcon: true,
                  prefixIcon: Icons.account_balance_wallet,
                  showSuffixIcon: false,
                  onChanged: (value) {},
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),
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

                LongRectangleButton(
                    onTap: () {
                      ///todo
                      ///here we need to show a  popup
                      ///to confirm adding the user
                      ///

                      context.read<AddBeneficiaryBloc>().add(AddNewBeneficiary(
                          accountName: accountNameController.text,
                          accountNumber: accountNumberController.text,
                          bank: selectedBank ?? "Absa"));

                      areYourSurePopUp(context, accountNameController.text,
                          accountNumberController.text, selectedBank ?? "ABSA");
                    },
                    title: "Add Beneficiary")
              ],
            ),
          ),
        );
      },
    );
  }

  Future areYourSurePopUp(
      BuildContext context, String name, String account, String bank) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Are you sure",
                ),
                Text("You are about to save $name as a beneficiary"),
                //colour should be changed
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 15,
                  children: [
                    Expanded(
                        child: LongRectangleButton(
                            onTap: () {
                              context.read<AddBeneficiaryBloc>().add(
                                  AddNewBeneficiary(
                                      accountName: name,
                                      accountNumber: account,
                                      bank: bank));
                              Navigator.pop(context);
                            },
                            title: "Yes")),
                    Expanded(
                        child: LongRectangleButton(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: "NO",
                            shouldHaveColor: true,
                            color: Colors.grey))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
