import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class TransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<SlideActionState> _key = GlobalKey();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SlideAction(
            key: _key,
            onSubmit: () {
              // Trigger your transfer function here
              Future.delayed(Duration(seconds: 1), () {
                _key.currentState?.reset(); // Reset slider
              });
            },
            innerColor: Colors.purple,
            outerColor: Colors.black,
            text: 'Send Now',
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            sliderButtonIcon: Icon(
              Icons.camera_alt, // Change to appropriate icon
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
