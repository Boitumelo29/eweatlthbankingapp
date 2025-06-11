import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/bloc/user_profile_bloc.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserProfileBloc, UserProfileState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                const Text(
                  "Your Information.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),

                LongTextFieldForm(
                  onChanged: (value) {},
                  labelText: 'Name',
                  hintText: state.userName,
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),
                LongTextFieldForm(
                  onChanged: (value) {},
                  labelText: 'Email',
                  hintText: state.accountNumber,
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),
                LongTextFieldForm(
                  onChanged: (value) {},
                  labelText: 'Phone number',
                  hintText: state.cellNumber,
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),

                GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 410,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, left: 15.0, right: 10.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Validate ID:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(state.id),
                                  ],
                                ),
                                const Icon(Icons.chevron_right),
                              ],
                            )),
                      ),
                    )),

                ///if it has been modified then we need to update the code
                LongButton(
                  onTap: () {},
                  title: "Update",
                  isLoading: false,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
