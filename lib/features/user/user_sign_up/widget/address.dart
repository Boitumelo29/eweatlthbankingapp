import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

class SignupProvinceDropdown extends StatelessWidget {
  final List<String> provinces;
  final String? initialValue;
  final ValueChanged<String?> onChanged;
  final FormFieldValidator<String>? validator;

  const SignupProvinceDropdown({
    super.key,
    required this.provinces,
    this.initialValue,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      borderRadius: BorderRadius.circular(20),
      decoration: InputDecoration(
        labelText: 'Province',
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: const Icon(Icons.map),
      ),
      value: initialValue,
      items: provinces.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }
}

class SignupSurb extends StatelessWidget {
  final TextEditingController username;
  final FocusNode usernameFocus;

  const SignupSurb(
      {super.key, required this.username, required this.usernameFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: username,
      focusNode: usernameFocus,
      hintText: "Suburb",
      labelText: "Suburb",
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.abc,
      showSuffixIcon: false,
      onChanged: (value) {},
      validator: (value) {
        return Validation.textValidation(value);
      },
    );
  }
}

class SignupCity extends StatelessWidget {
  final TextEditingController username;
  final FocusNode usernameFocus;

  const SignupCity(
      {super.key, required this.username, required this.usernameFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: username,
      focusNode: usernameFocus,
      hintText: "City",
      labelText: "City",
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.abc,
      showSuffixIcon: false,
      onChanged: (value) {},
      validator: (value) {
        return Validation.textValidation(value);
      },
    );
  }
}

class SignupStreetName extends StatelessWidget {
  final TextEditingController username;
  final FocusNode usernameFocus;

  const SignupStreetName(
      {super.key, required this.username, required this.usernameFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      controller: username,
      focusNode: usernameFocus,
      hintText: "Street Name and Number",
      labelText: "Street Name and Number",
      obsureText: false,
      showPrefixIcon: true,
      prefixIcon: Icons.abc,
      showSuffixIcon: false,
      onChanged: (value) {},
      validator: (value) {
        return Validation.textValidation(value);
      },
    );
  }
}
