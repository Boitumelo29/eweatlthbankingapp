import 'package:eweatlthbankingapp/common_widgets/sized_box/sized_space.dart';
import 'package:flutter/material.dart';

class CustomSettingRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTapped;

  const CustomSettingRow(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: InkWell(
        onTap: onTapped,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Icon(icon),
                  const SizedSpace(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle( fontSize: 10),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}
