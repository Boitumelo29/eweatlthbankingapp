import 'package:eweatlthbankingapp/common_widgets/screens/appBar_layout/app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class BeneficiaryView extends StatefulWidget {
  const BeneficiaryView({super.key});

  @override
  State<BeneficiaryView> createState() => _BeneficiaryViewState();
}

class _BeneficiaryViewState extends State<BeneficiaryView> {
  final TextEditingController _amountController = TextEditingController();
  final GlobalKey<SlideActionState> key = GlobalKey();

  void _onKeypadTap(String value) {
    setState(() {
      if (value == 'Del') {
        if (_amountController.text.isNotEmpty) {
          _amountController.text = _amountController.text
              .substring(0, _amountController.text.length - 1);
        }
      } else if (value.isNotEmpty) {
        _amountController.text += value;
      }
    });
  }

  List<String> keys = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "",
    "0",
    "Del"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay: username"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 70,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Enter Amount"),
            SizedBox(
              width: 120,
              child: TextField(
                controller: _amountController,
                decoration:
                    const InputDecoration(labelText: "Amount", prefixText: "R"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: keys.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (keys[index].isEmpty) {
                    return Container();
                  }
                  return GestureDetector(
                    onTap: () => _onKeypadTap(keys[index]),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(keys[index],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              width: 300,
              child: SlideAction(
                key: key,
                sliderButtonIcon: const Icon(Icons.chevron_right),
                innerColor: Colors.white,
                outerColor: Colors.green,
                text: "Transfer",
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
