// import 'package:flutter/material.dart';
//
// forgotPassword(context, setState, isForgotPasswordLoading) {
//   TextEditingController resetPasswordController = TextEditingController();
//
//   showModalBottomSheet(
//       isScrollControlled: true,
//       context: context,
//       builder: (BuildContext context) {
//         return Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: SizedBox(
//             height: 240,
//             width: 480,
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   "Forgot Password?",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Merriweather',
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   "No Worries, we'll send you reset instructions",
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 LongTextFieldForm(
//                   controller: resetPasswordController,
//                   onChanged: (value) {},
//                   hintText: "Please enter your email address",
//                   labelText: "Email",
//                   showSuffixIcon: false,
//                   showPrefixIcon: true,
//                   prefixIcon: Icons.email,
//                   validator: (value) {
//                     return Validation.emailValidation(value);
//                   },
//                   obsureText: false,
//                   isRed: false,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 LongButton(
//                     isLoading: isForgotPasswordLoading,
//                     onTap: () async {
//                       await resetPassword(resetPasswordController.text, context,
//                           setState, isForgotPasswordLoading);
//                      // Navigator.pop(context);
//                     },
//                     title: "Reset Password"),
//                 const SizedBox(
//                   height: 10,
//                 ),
//               ],
//             ),
//           ),
//         );
//       });
// }
//
// Future<void> resetPassword(String email, BuildContext context,
//     Function setStateCallback, isForgotPasswordLoading) async {
//   setStateCallback(() {
//     isForgotPasswordLoading = true;
//   });
//   try {
//     await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text(
//           "Reset instructions have been sent to $email, please check your emails"),
//       backgroundColor: Colors.green,
//       duration: const Duration(seconds: 5),
//     ));
//   } catch (e) {
//     print(e);
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text("Oops, an error has occurred: $e"),
//       duration: const Duration(seconds: 15),
//     ));
//   } finally {
//     setStateCallback(() {
//       isForgotPasswordLoading = false;
//     });
//   }
// }
