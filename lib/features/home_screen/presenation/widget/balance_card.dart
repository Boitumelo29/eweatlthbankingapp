import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

class BalanceCard extends StatelessWidget {
  final String deposit;

  const BalanceCard({super.key, required this.deposit});

  @override
  Widget build(BuildContext context) {
    final controller = FlipCardController();
    controller.flipcard();
    return Center(
      child: FlipCard(
        rotateSide: RotateSide.bottom,
        onTapFlipping: true,
        axis: FlipAxis.horizontal,
        controller: controller,
        frontWidget: Card(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.5,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const Text(
                  'Current balance',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Text(
                  'R $deposit',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.green,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('**** **** **** 1234'),
                    Icon(
                      Icons.credit_card,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backWidget: Card(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.5,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                const Divider(
                  thickness: 30,
                  color: Colors.green,
                ),
                const SizedBox(height: 25),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 25,
                      width: 200,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "123",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Add something here",
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
