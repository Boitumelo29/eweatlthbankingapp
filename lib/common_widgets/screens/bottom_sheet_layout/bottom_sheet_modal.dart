import 'package:flutter/material.dart';
class BottomSheetModal {
  Future<void> bottomSheetModal({required BuildContext context, double? height, required List<Widget> children}) async {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: height ?? 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: children,
            ),
          ),
        );
      },
    );
  }

}