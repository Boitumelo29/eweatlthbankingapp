import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/deposit/bloc/deposit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocConsumer, BlocProvider, ReadContext;

@RoutePage()
class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DepositBloc>(
      create: (context) =>
          DepositBloc(authRepo: AuthRepository())..add(const LoadUser()),
      child: const DepositView(),
    );
  }
}

class DepositView extends StatefulWidget {
  const DepositView({super.key});

  @override
  State<DepositView> createState() => _DepositViewState();
}

class _DepositViewState extends State<DepositView> {
  /// we are no longer going to do this, we are going to get the user through the auth

  final TextEditingController _amountController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
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
    return BlocConsumer<DepositBloc, DepositState>(
      listener: (context, state) {
        state.depositAmountFailureFailureOrUnit.fold(() {}, (eitherFailureOrUnit) {
          eitherFailureOrUnit.fold(
                (failure) {
                  context.router.push(const PaymentFailureRoute());
            },
                (_) {
                  context.router.push(const PaymentSuccessRoute());
            },
          );
        });
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Deposit"),
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildUserInfo(state),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _amountController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 0.7,
                        )),
                    labelText: 'Amount',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 0.7,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 0.7,
                        )),
                    prefixText: 'R',
                  ),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: keys.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                            color: Colors.grey[100],
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
                LongButton(
                    onTap: () {
                      if (_amountController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter an amount to deposit'),
                            backgroundColor: Colors.red,
                          ),
                        );
                        return;
                      }
                      context.read<DepositBloc>().add(
                          DepositEvent.depositAmount(
                              amount: _amountController.text));
                    },
                    title: "Deposit",
                    isLoading: false),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildUserInfo(DepositState state) {
    if (state.isLoadingUser) {
      return const Row(
        children: <Widget>[
          Icon(Icons.person),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Loading",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "****** ****** ****",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.hourglass_top, color: Colors.orange),
        ],
      );
    }

    if (state.errorMessage != null) {
      return const Row(
        children: [
          Icon(Icons.error, color: Colors.red),
          SizedBox(width: 10),
          Expanded(
            child: Text("Failed to load user"),
          ),
        ],
      );
    }

    return Row(
      children: <Widget>[
        const Icon(Icons.person),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                state.userName ?? "Unknown",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "997746 359757 1234",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const Icon(Icons.check_circle, color: Colors.green),
      ],
    );
  }
}
