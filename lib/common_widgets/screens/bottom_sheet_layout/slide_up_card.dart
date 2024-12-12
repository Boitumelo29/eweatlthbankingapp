// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
// import 'package:mylearning/common_widgets/sized_box/sized_space.dart';
//
// class SlideUpCard extends StatelessWidget {
//   final dynamic children;
//   final Color? mainColor;
//   final Color? baseColor;
//   final String title;
//   final String description;
//   final String? photo;
//   final IconData? icon;
//
//   const SlideUpCard(
//       {super.key,
//       this.children,
//       this.mainColor,
//       this.baseColor,
//       required this.title,
//       required this.description,
//       this.photo,
//       this.icon});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const SizedSpace(),
//           // IconFloatingElements(
//           //   height: 50,
//           //   width: 50,
//           //   color: Theme.of(context).colorScheme.onPrimary,
//           //   child: photo != null ? Image.network(photo!) : Icon(icon),
//           // ),
//           // const SizedSpace(
//           //   height: 30,
//           // ),
//           AnimationLimiter(
//             child: Column(
//               children: AnimationConfiguration.toStaggeredList(
//                 duration: const Duration(milliseconds: 300),
//                 childAnimationBuilder: (widget) => SlideAnimation(
//                   verticalOffset: 15,
//                   child: FadeInAnimation(
//                     child: ScaleAnimation(
//                       scale: 0.94,
//                       child: widget,
//                     ),
//                   ),
//                 ),
//                 children: children,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
