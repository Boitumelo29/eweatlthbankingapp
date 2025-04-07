// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// Future<void> _login() async {
//   if (!_formKey.currentState!.validate()) {
//     return;
//   }
//
//   setState(() {
//     isLoading = true;
//   });
//
//   try {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final String? userDataJson = prefs.getString('userData');
//
//     if (userDataJson != null) {
//       final Map<String, dynamic> userData = jsonDecode(userDataJson);
//
//       if (userData['email'] == email.text &&
//           userData['password'] == password.text) {
//         await prefs.setBool('isLoggedIn', true);
//         await prefs.setString(
//             'accountId', userData['email']); // Using email as accountId
//         await prefs.setString('username', userData['firstName']);
//         await prefs.setString('surname', userData['lastName']);
//
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => MainHomePage()),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Invalid email or password'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('No registered users found'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   } catch (e) {
//     print("Login error: $e");
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Error: ${e.toString()}'),
//         backgroundColor: Colors.red,
//       ),
//     );
//   } finally {
//     setState(() {
//       isLoading = false;
//     });
//   }
// }
