import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_rectangle_button.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';

@RoutePage()
class AddBeneficiaryScreen extends StatefulWidget {
  const AddBeneficiaryScreen({super.key});

  @override
  State<AddBeneficiaryScreen> createState() => _AddBeneficiaryScreenState();
}

class _AddBeneficiaryScreenState extends State<AddBeneficiaryScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController accountNameController = TextEditingController();
    final TextEditingController accountNumberController =
        TextEditingController();
    List<String> banks = ['FNB', 'Standard Bank', 'ABSA', 'Nedbank'];
    String? selectedBank;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Beneficiary"),
      ),
      body: Column(
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
            prefixIcon: Icons.email_outlined,
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
            prefixIcon: Icons.email_outlined,
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
            validator: (value) => value == null ? 'Please select a bank' : null,
          ),

          LongRectangleButton(
              onTap: () {
                ///todo
                ///here we need to show a  popup
                ///to confirm adding the user
                ///
                areYourSurePopUp(context, accountNameController.text);
              },
              title: "Add Beneficiary")
        ],
      ),
    );
  }

  Future areYourSurePopUp(BuildContext context, String name) {
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
                              ///here we can push to the BeneficiaryListView
                              context.router.push(const BeneficiaryListRoute());
                              ///here we need to add listener if the action was succseful or not
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
