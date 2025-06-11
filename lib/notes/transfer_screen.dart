import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class TransferScreen extends StatelessWidget {
  @override
   const TransferScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final GlobalKey<SlideActionState> key = GlobalKey();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SlideAction(
            key: key,
            onSubmit: () {
              Future.delayed(const Duration(seconds: 1), () {
                key.currentState?.reset();
              });
              return null;
            },
            innerColor: Colors.purple,
            outerColor: Colors.black,
            text: 'Send Now',
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            sliderButtonIcon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            elevation: 0,
            borderRadius: 50,
          ),
        ),
      ),
    );
  }
}
