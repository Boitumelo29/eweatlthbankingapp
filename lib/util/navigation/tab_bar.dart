// import 'package:flutter/material.dart';
// import 'package:mylearning/features/chatbot/presenation/screens/chatbot_screen.dart';
// import 'package:mylearning/features/home/home_screen/page/home_screen.dart';
// import 'package:mylearning/features/my_study/presentation/page/my_study_page.dart';
// import 'package:mylearning/features/notes/presentation/screen/notes_screen.dart';
// import 'package:mylearning/features/upcoming_events/upcoming_event_screen/pages/upcoming_screen.dart';
//
// class TabBarScreen extends StatefulWidget {
//   final bool isDarkMode;
//   final Function toggleTheme;
//
//   const TabBarScreen(
//       {super.key, required this.toggleTheme, required this.isDarkMode});
//
//   @override
//   State<TabBarScreen> createState() => _TabBarScreenState();
// }
//
// class _TabBarScreenState extends State<TabBarScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 5,
//
//       ///todo: if no network then we display this, if network then we display the other.
//       child: Scaffold(
//         bottomNavigationBar: const TabBar(tabs: [
//           Icon(Icons.home),
//           Icon(Icons.chat),
//           Icon(Icons.abc),
//           Icon(Icons.note_alt_outlined),
//           Icon(Icons.date_range),
//
//         ]),
//         body: TabBarView(
//           children: [
//             HomePage(
//                 isDarkMode: widget.isDarkMode, toggleTheme: widget.toggleTheme),
//             const ChatBotPage(),
//             const MyStudyPage(),
//             const NotesScreen(),
//             const UpcomingEvents(),
//
//
//             ///todo instead of a profile screen we can have a drawer so we can keep all of our screens, then keep the dark mode setting in there
//             // ProfilePage(
//             //     isDarkMode: widget.isDarkMode, toggleTheme: widget.toggleTheme)
//           ],
//         ),
//       ),
//     );
//   }
// }
