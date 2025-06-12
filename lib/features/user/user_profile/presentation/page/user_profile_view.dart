import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/textfield/textfields.dart';
import 'package:eweatlthbankingapp/features/user/user_profile/bloc/user_profile_bloc.dart';
import 'package:eweatlthbankingapp/util/validation/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  Uint8List? galleryFile;
  final picker = ImagePicker();

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
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      galleryFile == null
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
                                    galleryFile!,
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
                            _showPicker(context);
                          },
                          icon: const Icon(
                            Icons.camera,
                            size: 20,
                            color: Colors.grey,
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

  void _showPicker(BuildContext context) {
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
                      getImage(ImageSource.gallery);
                      Navigator.of(context).pop();
                    })
              ],
            )),
          );
        });
  }

  Future getImage(ImageSource img) async {
    try {
      final pickedFile = await picker.pickImage(source: img);
      if (pickedFile != null) {
        final bytes = await pickedFile.readAsBytes();
        final base64Image = base64Encode(bytes); // Convert image to base64

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(
            'profile_image', base64Image); // Save to SharedPreferences

        setState(() {
          galleryFile = Uint8List.fromList(bytes); // Show the image in UI
        });
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Error occurred")));
      }
    } catch (e) {
      print("get image error: $e");
    }
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
