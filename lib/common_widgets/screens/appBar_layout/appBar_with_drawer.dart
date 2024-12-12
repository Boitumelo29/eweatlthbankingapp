import 'package:flutter/material.dart';

class AppBarDrawerScreen extends StatelessWidget {
  final bool shouldScroll;
  final String title;
  final List<Widget> children;
  final List<Widget> drawerChildren;
  final bool shouldHaveFloatingButton;
  final Function()? floatingActionButton;
  final String? tooltip;
  final IconData? icon;
  final bool shouldBeCentered;

  const AppBarDrawerScreen(
      {super.key,
      required this.shouldScroll,
      required this.title,
      required this.children,
      this.floatingActionButton,
      required this.shouldHaveFloatingButton,
      this.tooltip,
      this.icon,
      required this.shouldBeCentered,
      required this.drawerChildren});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        physics: shouldScroll
            ? const ScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: shouldBeCentered
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children),
            ),
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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(children: drawerChildren),
      ),
    );
  }
}
