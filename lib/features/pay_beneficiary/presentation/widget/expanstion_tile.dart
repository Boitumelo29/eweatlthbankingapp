// import 'package:expansion_tile_card/expansion_tile_card.dart';
// import 'package:flutter/material.dart';
//
// class ExpansionTile extends StatelessWidget {
//   final GlobalKey<ExpansionTileCardState> card;
//   final String username;
//   final String accountID;
//   final List<Widget> children;
//
//   const ExpansionTile(
//       {super.key,
//       required this.card,
//       required this.username,
//       required this.accountID,
//       required this.children});
//
//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTileCard(
//         key: card,
//         expandedColor: Colors.white,
//         baseColor: Colors.white,
//         leading: const CircleAvatar(
//           backgroundColor: Colors.green,
//           child: Icon(Icons.person),
//         ),
//         title: Text(username),
//         subtitle: Text(accountID),
//         children: children);
//   }
// }
