import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/beneficiary_bloc/beneficiary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeneficiaryListView extends StatefulWidget {
  const BeneficiaryListView({super.key});

  @override
  State<BeneficiaryListView> createState() => _BeneficiaryListViewState();
}

class _BeneficiaryListViewState extends State<BeneficiaryListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BeneficiaryBloc, BeneficiaryState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Pay Beneficiary"),
            actions: [
              IconButton(
                  onPressed: () {
                    ///now we need to create the screen to add the user
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
                        itemCount: state.usersList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Dismissible(
                            key: Key(state.usersList[index].accountNumber),
                            background: Container(
                              color: Colors.green,
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 20),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                            secondaryBackground: Container(
                              color: Colors.red,
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.only(right: 20),
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            direction: DismissDirection.horizontal,
                            onDismissed: (direction) {
                              if (direction == DismissDirection.startToEnd) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Edit ${state.usersList[index].accountName}'),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        '${state.usersList[index].accountName} deleted'),
                                    action: SnackBarAction(
                                      label: 'UNDO',
                                      onPressed: () {
                                      },
                                    ),
                                  ),
                                );
                              }
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundColor: colors(state, index),
                                child: Text(
                                  state.usersList[index].bank.length > 1
                                      ? state.usersList[index].bank
                                          .substring(0, 1)
                                      : "ABSA",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              title: Text(state.usersList[index].accountName),
                              subtitle:
                                  Text(state.usersList[index].accountNumber),
                              onTap: () {
                                context.router.push(const BeneficiaryRoute());
                              },
                            ),
                          );
                        }),
                  ),
                ]),
          ),
        );
      },
    );
  }

  Color colors(BeneficiaryState state, int index) {
    if (state.usersList[index].bank == "ABSA") {
      return Colors.red;
    } else if (state.usersList[index].bank == "FNB" ||
        state.usersList[index].bank == "Standard Bank") {
      return Colors.green;
    } else if (state.usersList[index].bank == "Nedbank") {
      return Colors.blue;
    }

    return Colors.grey;
  }
}
