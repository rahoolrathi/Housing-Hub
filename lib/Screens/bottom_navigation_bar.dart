import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:housing_hub/Screens/chat_screen.dart';
import 'package:housing_hub/Screens/main_screen.dart';
import 'package:housing_hub/Screens/profile_screen.dart';

import 'history_screen.dart';

class BottomNavigationBer extends StatefulWidget {
  @override
  State<BottomNavigationBer> createState() => _BottomNavigationBerState();
}

class _BottomNavigationBerState extends State<BottomNavigationBer> {
  int index = 0;
  final screens=<Widget>[
    MainPage(),
    ChatPage(),
    HistoryPage(),
    ProfilePage()


  ];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xff0095FF),
          selectedIndex: index,
          onDestinationSelected: (index)=>{
            setState(()=>this.index=index)
          },
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home,
                  color: Colors.blue[50]
                  ,),
                label: "Home"
            ),
            NavigationDestination(
                icon: Icon(Icons.chat,
                    color: Colors.blue[50]
                ),
                label: "chat"
            ),
            NavigationDestination(
                icon: Icon(Icons.history,
                    color: Colors.blue[50]
                ),
                label: "History"
            ),
            NavigationDestination(
                icon: Icon(Icons.person,
                    color: Colors.blue[50]
                ),
                label: "Profile"
            ),
          ],

        ),
      ),

    );
  }
}
