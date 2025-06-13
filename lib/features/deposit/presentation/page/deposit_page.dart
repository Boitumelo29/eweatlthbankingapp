import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:eweatlthbankingapp/features/deposit/bloc/deposit_bloc.dart';
import 'package:eweatlthbankingapp/features/deposit/data/data_source/voucher_service_datasource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocConsumer, BlocProvider, ReadContext;
import 'package:slide_to_act/slide_to_act.dart';

@RoutePage()
class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DepositBloc>(
      create: (context) => DepositBloc(
          authRepo: AuthRepository(),
          voucherServiceRepository: VoucherServiceDatasourceImpl())
        ..add(const LoadUser()),
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
    return BlocConsumer<DepositBloc, DepositState>(
      listener: (context, state) {
        state.depositAmountFailureFailureOrUnit.fold(() {},
            (eitherFailureOrUnit) {
          eitherFailureOrUnit.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Unable to process order"),
                  backgroundColor: Colors.red,
                ),
              );
              context.router.push(const PaymentFailureRoute());
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Voucher successfully redeemed'),
                  backgroundColor: Colors.green,
                ),
              );
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
                        borderSide: BorderSide(
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
                SlideAction(
                  key: key,
                  sliderButtonIcon: const Icon(Icons.chevron_right),
                  text: "Deposit",
                  innerColor: Colors.white,
                  outerColor: Colors.green,
                  onSubmit: () {
                    if (_amountController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter an amount to deposit'),
                          backgroundColor: Colors.red,
                        ),
                      );

                    }
                    context.read<DepositBloc>().add(DepositEvent.redeemVoucher(
                        voucher: _amountController.text));
                    return null;
                  },
                )
                // LongButton(
                //     onTap: () {
                //       if (_amountController.text.isEmpty) {
                //         ScaffoldMessenger.of(context).showSnackBar(
                //           const SnackBar(
                //             content: Text('Please enter an amount to deposit'),
                //             backgroundColor: Colors.red,
                //           ),
                //         );
                //         return;
                //       }
                //       context.read<DepositBloc>().add(
                //           DepositEvent.redeemVoucher(
                //               voucher: _amountController.text));
                //     },
                //     title: "Deposit",
                //     isLoading: false),
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
