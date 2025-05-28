import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class BeneficiaryExpansionTile extends StatelessWidget {
  final GlobalKey<ExpansionTileCardState> card;
  final String username;
  final String accountID;
  final List<Widget> children;

  const BeneficiaryExpansionTile(
      {super.key,
      required this.card,
      required this.username,
      required this.accountID,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
        borderRadius: BorderRadius.circular(30),
        key: card,
        expandedColor: Colors.white,
        baseColor: Colors.white,
        contentPadding: const EdgeInsets.only(left: 20),
        leading: const Icon(
          Icons.person,
          color: Colors.green,
        ),
        title: Text(username),
        subtitle: Text(accountID),
        children: children);
  }
}
