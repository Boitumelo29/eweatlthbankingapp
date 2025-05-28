import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_rectangle_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            const Text("Your Information.", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
            LongTextFieldForm(
              onChanged: (value) {},
              hintText: 'Name',
              labelText: 'Name',
              validator: (value) {
                return Validation.textValidation(value);
              },
            ),  LongTextFieldForm(
              onChanged: (value) {},
              hintText: 'Email',
              labelText: 'Email',
              validator: (value) {
                return Validation.textValidation(value);
              },
            ),  LongTextFieldForm(
              onChanged: (value) {},
              hintText: 'Phone number',
              labelText: 'Phone number',
              validator: (value) {
                return Validation.textValidation(value);
              },
            ),


            ///if it has been modified then we need to update the code
            LongButton(onTap: () {}, title: "Update", isLoading: false,)
          ],
        ),
      ),
    );
  }
}
