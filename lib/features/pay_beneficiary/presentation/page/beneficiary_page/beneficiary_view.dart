import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/beneficiary_bloc/beneficiary_bloc.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/presentation/widget/expanstion_tile.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slide_to_act/slide_to_act.dart';

class BeneficiaryView extends StatefulWidget {
  final int index;

  const BeneficiaryView({super.key, required this.index});

  @override
  State<BeneficiaryView> createState() => _BeneficiaryViewState();
}

class _BeneficiaryViewState extends State<BeneficiaryView> {
  final TextEditingController _amountController = TextEditingController();
  final GlobalKey<SlideActionState> key = GlobalKey();
  final GlobalKey<ExpansionTileCardState> card = GlobalKey();

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
    return BlocConsumer<BeneficiaryBloc, BeneficiaryState>(
      listener: (context, state) {
        state.transferAmountFailureFailureOrUnit.fold(() {},
            (eitherFailureOrUnit) {
          eitherFailureOrUnit.fold((failure) {
            ///todo this is the correct way to push to the failure page
            //context.router.pushAndPopUntil(route, predicate: predicate)
            context.router.push(const TransferFailureRoute());
          }, (_) {
            context.router.push(const TransferSuccessRoute());
          });
        });
      },
      builder: (context, state) {
        if (state.usersList.isEmpty) {
          return const Scaffold(
            body: Center(
              child: Text('No beneficiaries found'),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text("Transfer"),
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Current Balance: R${state.currentBalance}",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                BeneficiaryExpansionTile(
                    card: card,

                    ///so how do we know which index
                    username: state.usersList[widget.index].accountName,
                    accountID: state.usersList[widget.index].accountNumber,
                    children: const [
                      Text("data"),
                    ]),
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
                  text: "Transfer",
                  innerColor: Colors.white,
                  outerColor: Colors.green,
                  onSubmit: () {
                    context.read<BeneficiaryBloc>().add(AmountTransferred(
                        selectedBank: state.usersList[widget.index].bank,
                        accountName: state.usersList[widget.index].accountName,
                        accountNumber:
                            state.usersList[widget.index].accountNumber,
                        amount: _amountController.text));

                    return null;
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
