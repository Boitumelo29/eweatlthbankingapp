import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      home: HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        elevation: 0,
        backgroundColor: Colors.white10,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '€ 6,815.53',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Current balance',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '€ 6,815.53',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('**** **** **** 7995'),
                          Icon(Icons.credit_card),  // Changed from FlutterIcons to Icons.credit_card
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildActionButton(Icons.add, 'Top up'),
                  _buildActionButton(Icons.loop, 'Exchange'),
                  _buildActionButton(Icons.send, 'Transfer'),
                  _buildActionButton(Icons.details, 'Details'),
                ],
              ),
            ),
            ListTile(
              title: Text('Transactions'),
              trailing: TextButton(
                onPressed: () {},
                child: Text('View all'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Balance Top Up'),
              subtitle: Text('1 Jul 2024'),
              trailing: Text('€ 800'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 30),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Main Content of the App'),
      ),
    );
  }
}
