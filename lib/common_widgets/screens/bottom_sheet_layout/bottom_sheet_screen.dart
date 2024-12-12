import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Future bottomSheetScreenModal(
    {required BuildContext context,
    required dynamic children,
    required bool enableDrag,
    required bool shouldScroll}) async {
  return await showModalBottomSheet(
      context: context,
      builder: (_) {
        return AnimatedContainer(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 15),
          constraints: const BoxConstraints(maxHeight: 700),
          duration: const Duration(microseconds: 200),
          child: SingleChildScrollView(
            physics: shouldScroll
                ? const ScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                children: children,
              ),
            ),
          ),
        );
      });
}
