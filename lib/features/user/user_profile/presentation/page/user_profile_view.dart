import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/bloc/user_profile_bloc.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserProfileBloc, UserProfileState>(
      listener: (context, state) {},
      buildWhen: (p, c) => p.userImage != c.userImage,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
          ),
          ///if i want to wrap multiples screens my
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      state.userImage.isEmpty
                          ? const Icon(
                              Icons.person,
                              size: 100,
                            )
                          : SizedBox(
                              height: 100,
                              width: 100,
                              child: Center(
                                child: ClipOval(
                                  child: Image.memory(
                                    base64Decode(state.userImage),
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {
                            _showPicker(context, state.id);
                          },
                          icon: Icon(
                            Icons.camera,
                            size: 30,
                            color: state.userImage.isEmpty
                                ? Colors.grey
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                  controller: TextEditingController(text: state.userName),
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),
                LongTextFieldForm(
                  onChanged: (value) {},
                  labelText: 'Email',
                  controller: TextEditingController(text: state.accountNumber),
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),
                LongTextFieldForm(
                  onChanged: (value) {},
                  labelText: 'Phone number',
                  controller: TextEditingController(text: state.cellNumber),
                  validator: (value) {
                    return Validation.textValidation(value);
                  },
                ),

                GestureDetector(
                    onTap: () => _showMyBottomSheet(context, state.id),
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
                            top: 12.0, left: 15.0, right: 10.0, bottom: 5.0),
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
                  onTap: () {
                    _showMyBottomSheet(context, state.id);
                  },
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

  void _showPicker(BuildContext context, String accountId) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: (Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text("Pick a picture"),
                    trailing: const Icon(Icons.chevron_right_outlined),
                    onTap: () {
                      context.read<UserProfileBloc>().add(GetUserImage(
                          accountId: accountId, img: ImageSource.gallery));
                      Navigator.of(context).pop();
                    })
              ],
            )),
          );
        });
  }

  void _showMyBottomSheet(BuildContext context, String id) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 15,
              children: [
                Row(
                  children: [
                    const Text(
                      "Validate ID:  ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(id),
                  ],
                ),
                const Text(
                    "To validate your ID, you will need to scan your physical ID."),
                LongButton(onTap: () {}, title: "Validate", isLoading: false)
              ],
            ),
          ),
        );
      },
    );
  }
}
