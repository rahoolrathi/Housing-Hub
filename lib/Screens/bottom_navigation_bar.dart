import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:housing_hub/Screens/SearchScreen.dart';
import 'package:housing_hub/Screens/main_screen.dart';
import 'package:housing_hub/Screens/profile_screen.dart';
import 'history_screen.dart';

class BottomNavigationBer extends StatefulWidget {
  @override
  State<BottomNavigationBer> createState() => _BottomNavigationBerState();
}

class _BottomNavigationBerState extends State<BottomNavigationBer> {
  int index = 0;
  final screens = <Widget>[
    MainPage(),
    SearchPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.grey.shade100,
        color: Colors.greenAccent, // Color of the selected item
        buttonBackgroundColor: Colors.grey.shade100,
        items: <Widget>[
          Icon(Icons.home, color: Colors.black,),
          Icon(Icons.chat, color: Colors.black),
          Icon(Icons.history, color: Colors.black),
          Icon(Icons.person, color: Colors.black),
        ],
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
      ),
    );
  }
}
