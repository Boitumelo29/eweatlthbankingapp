import 'dart:convert';

import 'package:eweatlthbankingapp/common_widgets/screens/user_layout/user_layout_screen.dart';
import 'package:eweatlthbankingapp/common_widgets/sized_box/sized_space.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/features/onboarding/presentation/onboarding_page.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/logo_image.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/ewealth_text.dart';
import 'package:eweatlthbankingapp/features/user/user_login/presentation/widget/my_ewealth_sub_text.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/widget/SignupEmail.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/widget/address.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/widget/already_have_account.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/widget/signup_password.dart';
import 'package:eweatlthbankingapp/features/user/user_sign_up/widget/signup_username.dart';
import 'package:eweatlthbankingapp/util/constants/strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SignUpPage extends StatefulWidget {
  final VoidCallback? show;

  const SignUpPage({super.key, this.show});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  FocusNode emailFocus = FocusNode();
  final password = TextEditingController();
  FocusNode passwordFocus = FocusNode();
  final passwordConfirm = TextEditingController();
  FocusNode passwordConfirmFocus = FocusNode();
  final username = TextEditingController();
  FocusNode usernameFocus = FocusNode();
  final lastname = TextEditingController();
  FocusNode lastnameFocus = FocusNode();
  final cellphone = TextEditingController();
  FocusNode cellphoneFocus = FocusNode();
  final id = TextEditingController();
  FocusNode idFocus = FocusNode();
  final sub = TextEditingController();
  FocusNode subFocus = FocusNode();
  final city = TextEditingController();
  FocusNode cityFocus = FocusNode();
  final streetName = TextEditingController();
  FocusNode streetNameFocus = FocusNode();
  final TextEditingController dobController =
      TextEditingController();

  bool isLoading = false;
  final List<String> provinces = [
    'Gauteng',
    'Western Cape',
    'KwaZulu-Natal',
    'Eastern Cape',
    'Free State',
    'Limpopo',
    'Mpumalanga',
    'Northern Cape',
    'North West'
  ];
  String? selectedProvince;

  @override
  Widget build(BuildContext context) {
    return UserLayoutScreen(
      children: [
        Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const SizedSpace(
                  height: 20,
                ),
                const EWealthText(),
                const EWealthSubText(),
                const LogoImage(),
                SignupUsername(username: username, usernameFocus: usernameFocus),
                const SizedSpace(
                  height: 10,
                ),
                SignupLastName(username: lastname, usernameFocus: lastnameFocus),
                const SizedSpace(
                  height: 10,
                ),
                SignupCellPhone(username: cellphone, usernameFocus: cellphoneFocus),
                const SizedSpace(
                  height: 10,
                ),
                SignupEmail(email: email, emailFocus: emailFocus),
                const SizedSpace(
                  height: 10,
                ),
                SignupProvinceDropdown(
                  provinces: provinces,
                  initialValue: selectedProvince,
                  onChanged: (value) {
                    setState(() {
                      selectedProvince = value!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a province';
                    }
                    return null;
                  },
                ),
                const SizedSpace(
                  height: 10,
                ),
                SignupSurb(
                  username: sub,
                  usernameFocus: subFocus,
                ),
                const SizedSpace(
                  height: 10,
                ),
                SignupCity(
                  username: city,
                  usernameFocus: cityFocus,
                ),
                const SizedSpace(
                  height: 10,
                ),
                SignupStreetName(
                  username: streetName,
                  usernameFocus: streetNameFocus,
                ),
                const SizedSpace(
                  height: 10,
                ),
                SignupID(
                  username: id,
                  usernameFocus: idFocus,
                  onIDChanged: onIDChanged,
                ),
                const SizedSpace(
                  height: 10,
                ),

                ///todo look here
                TextField(
                  controller: dobController,
                  decoration: InputDecoration(
                      labelText: 'Date of Birth (DD/MM/YYYY)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey, width: 0.7),
                      )),
                  readOnly: true,
                ),
                const SizedSpace(
                  height: 10,
                ),
                SignupPassword(password: password, passwordFocus: passwordFocus),
                const SizedBox(
                  height: 10,
                ),
                LongButton(
                    isLoading: isLoading,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _signUp(username.text);
                      }
                    },
                    title: Strings.signUp),
                const SizedBox(
                  height: 10,
                ),
                AlreadyHaveAnAccount(onPressed: widget.show)
              ],
            )),
      ],
    );
  }

  Future<void> _signUp(String text) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      
      final accountId = email.text;
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('accountId', accountId);
      await prefs.setString('username', username.text);
      await prefs.setString('surname', lastname.text);
      
      final userData = {
        'firstName': username.text,
        'lastName': lastname.text,
        'cellNumber': cellphone.text,
        'email': email.text,
        'province': selectedProvince,
        'suburb': sub.text,
        'city': city.text,
        'streetNumber': "123",
        'streetName': streetName.text,
        'idNumber': id.text,
        'dateOfBirth': dobController.text,
        'password': password.text,
      };
      
      await prefs.setString('userData', jsonEncode(userData));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void onIDChanged(String id) {
    String? dob = formatDOB(id);
    if (dob != null) {
      setState(() {
        dobController.text = dob;
      });
    } else {
      setState(() {
        dobController.text = "Invalid ID";
      });
    }
  }

  String? formatDOB(String id) {
    if (id.length != 13) {
      return null;
    }

    try {
      String year = id.substring(0, 2);
      String month = id.substring(2, 4);
      String day = id.substring(4, 6);

      int yearInt = int.parse(year);

      int currentYearLastTwoDigits = DateTime.now().year % 100;
      int fullYear = (yearInt > currentYearLastTwoDigits)
          ? 1900 + yearInt
          : 2000 + yearInt;

      DateTime? date = DateTime.tryParse('$fullYear-$month-$day');
      if (date == null) {
        return null;
      }

      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return null;
    }
  }
}
