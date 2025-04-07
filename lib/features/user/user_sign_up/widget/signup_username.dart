import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

class SignupUsername extends StatelessWidget {
  final TextEditingController username;
  final FocusNode usernameFocus;

  const SignupUsername(
      {super.key, required this.username, required this.usernameFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: username,
      focusNode: usernameFocus,
      hintText: "First Name",
      labelText: "First Name",
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.abc,
      showSuffixIcon: false,
      onChanged: (value) {},
      validator: (value) {
        return Validation.usernameValidation(value);
      },
    );
  }
}

class SignupLastName extends StatelessWidget {
  final TextEditingController username;
  final FocusNode usernameFocus;

  const SignupLastName(
      {super.key, required this.username, required this.usernameFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: username,
      focusNode: usernameFocus,
      hintText: "Last Name",
      labelText: "Last Name",
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.abc,
      showSuffixIcon: false,
      onChanged: (value) {},
      validator: (value) {
        return Validation.lastnameValidation(value);
      },
    );
  }
}

class SignupCellPhone extends StatelessWidget {
  final TextEditingController username;
  final FocusNode usernameFocus;

  const SignupCellPhone(
      {super.key, required this.username, required this.usernameFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: username,
      focusNode: usernameFocus,
      hintText: "Cellphone",
      labelText: "Cellphone",
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.call,
      showSuffixIcon: false,
      onChanged: (value) {},
      validator: (value) {
        return Validation.cellphoneValidation(value);
      },
    );
  }
}

class SignupID extends StatelessWidget {
  final TextEditingController username;
  final FocusNode usernameFocus;
  final Function(String) onIDChanged;

  const SignupID({
    super.key,
    required this.username,
    required this.usernameFocus,
    required this.onIDChanged,
  });

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: username,
      focusNode: usernameFocus,
      hintText: "ID",
      labelText: "ID",
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.person,
      showSuffixIcon: false,
      onChanged: (value) {
        onIDChanged(value);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your ID number';
        }
        if (formatDOB(value) == null) {
          return 'Invalid ID number. Please enter a valid ID';
        }
        return null;
      },
    );
  }

  String? formatDOB(String id) {
    if (id.length != 13) return null;

    try {
      // Extract year, month, and day from ID
      String year = id.substring(0, 2);
      String month = id.substring(2, 4);
      String day = id.substring(4, 6);

      // Convert to integers for validation
      int yearInt = int.parse(year);
      int monthInt = int.parse(month);
      int dayInt = int.parse(day);

      // Determine century (19xx or 20xx)
      int fullYear;
      if (yearInt > DateTime.now().year % 100) {
        fullYear = 1900 + yearInt;
      } else {
        fullYear = 2000 + yearInt;
      }

      // Validate date components
      if (monthInt < 1 || monthInt > 12) return null;
      if (dayInt < 1 || dayInt > 31) return null;
      return '$day/$month/${fullYear.toString()}';

    } catch (e) {
      return null;
    }
  }
}
