import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final bool shouldScroll;
  final List<Widget>? appBarChildren;
  final bool shouldHaveDrawer;
  final Widget? drawer;
  final bool shouldHaveFloatingButton;
  final Function()? floatingActionButton;
  final String? tooltip;
  final IconData? icon;
  final bool shouldBeCentered;

  const AppBarScreen({
    super.key,
    required this.title,
    required this.children,
    this.shouldScroll = false,
    this.shouldHaveDrawer = false,
    this.shouldHaveFloatingButton = false,
    this.shouldBeCentered = false,
    this.appBarChildren,
    this.floatingActionButton,
    this.tooltip,
    this.icon,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        actions: appBarChildren,
      ),
      drawer: shouldHaveDrawer ? drawer : null,
      body: SingleChildScrollView(
        physics: shouldScroll
            ? const ScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children)),
          ),
        ),
      ),
      floatingActionButton: shouldHaveFloatingButton
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: floatingActionButton,
              tooltip: tooltip,
              child: Icon(icon),
            )
          : null,
    );
  }
}
