import 'package:flutter/material.dart';

class NoAppBarScreen extends StatelessWidget {
  final List<Widget> children;
  final bool shouldScroll;

  const NoAppBarScreen(
      {super.key, required this.children, required this.shouldScroll});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: shouldScroll
          ? const ScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
