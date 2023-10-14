import 'package:flutter/material.dart';

import 'Screens/bottom_navigation_bar.dart';
import 'Screens/home_page_screen.dart';
import 'Screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/MainPage',
       routes: {
        '/MainPage':(context)=>BottomNavigationBer(),
       },
       home:HomePage()
    );
  }
}
