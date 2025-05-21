import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:flutter/material.dart';

class BeneficiaryListView extends StatefulWidget {
  const BeneficiaryListView({super.key});

  @override
  State<BeneficiaryListView> createState() => _BeneficiaryListViewState();
}

class _BeneficiaryListViewState extends State<BeneficiaryListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay Beneficiary"),
        actions: [
          IconButton(
              onPressed: () {
                ///now we need to create the screen to add the user
                ///
                context.router.push(const AddBeneficiaryRoute());
              },
              icon: const Icon(
                Icons.add,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: const Icon(Icons.person),
                        title: Text("User number $index"),
                        onTap: () {
                          context.router.push(const BeneficiaryRoute());
                        },
                      );
                    }),
              ),
            ]),
      ),
    );
  }
}

