import 'package:flutter/material.dart';
import 'package:housing_hub/Screens/profile_screen.dart';
import '../Componnets/bottom_navigation_bar_componnetdart';
import 'SearchScreen.dart';
import 'history_screen.dart';
import 'main_screen.dart';

class HomePage extends StatelessWidget {
  final List<Widget> screens = [
    MainPage(),
    SearchPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      resizeToAvoidBottomInset: false,
      body: MyBottomNavigationBar(screens: screens),
    );
  }
}
