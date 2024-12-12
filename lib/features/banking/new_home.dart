import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My cards"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('**** 3452', style: TextStyle(color: Colors.white, fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Balance', style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Text('\$6,758', style: TextStyle(color: Colors.white, fontSize: 24)),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                TransactionItem(iconData: Icons.loop, title: "Money transfer", subtitle: "April 18, 2022", amount: "-\$500"),
                TransactionItem(iconData: Icons.restaurant, title: "Restaurant", subtitle: "April 03, 2022", amount: "-\$75"),
                TransactionItem(iconData: Icons.palette, title: "Dribbble", subtitle: "March 24, 2022", amount: "-\$24"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final String amount;

  const TransactionItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(iconData, color: Colors.white),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(amount, style: TextStyle(color: Colors.green)),
    );
  }
}
