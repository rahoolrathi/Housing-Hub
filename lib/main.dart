import 'package:flutter/material.dart';
import 'package:housing_hub/Screens/main_screen.dart';
import 'package:housing_hub/widgets/list_componnet_widget.dart';
import 'Screens/bottom_navigation_bar.dart';
import 'Screens/home_page_screen.dart';
import 'defined_constants.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/MainPage',
       routes: {
        '/MainPage':(context)=>HomePage(),
        '/list_commponnet':(context)=>ListComponnetWidget(orientation: LayoutOrientation.vertical,height: vertical_height,width: vertical_width),
       },
       home:HomePage()
    );
  }
}
