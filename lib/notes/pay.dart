import 'package:shared_preferences/shared_preferences.dart';


///we need to add to our data
///we need to add to add to our domain
///pass data through our bloc
///retrieve data through our bloc and set it through our bloc
Future<void> saveTransferData({
  required String accountName,
  required String accountNumber,
  required String amount,
  required String bank,
}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('accountName', accountName);
  await prefs.setString('accountNumber', accountNumber);
  await prefs.setString('amount', amount);
  await prefs.setString('bank', bank);
}

// beneficiary

// onTap: () async {
// if (!_formKey.currentState!.validate()) return;
//
// // Save to local storage
// await saveTransferData(
// accountName: accountNameController.text,
// accountNumber: accountNumberController.text,
// amount: amountController.text,
// bank: selectedBank ?? '',
// );
//
// // Then process the transfer
// context.read<TransferBloc>().add(ProcessTransfer(
// selectedBank: selectedBank.toString(),
// accountName: accountNameController.text,
// amount: amountController.text,
// ));
// },


// @override
// void initState() {
//   super.initState();
//   loadTransferData();
// }
//
// Future<void> loadTransferData() async {
//   final prefs = await SharedPreferences.getInstance();
//   setState(() {
//     accountNameController.text = prefs.getString('accountName') ?? '';
//     accountNumberController.text = prefs.getString('accountNumber') ?? '';
//     amountController.text = prefs.getString('amount') ?? '';
//     selectedBank = prefs.getString('bank');
//   });
// }
