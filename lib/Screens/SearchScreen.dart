import 'package:flutter/material.dart';
import 'VerticalList.dart';
import 'home_screen.dart'; // Make sure to import your HomeScreen widget

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(backgroundColor: Colors.white, title: appbar(context)),
      body: VerticalList(false),
    );
  }
}

Widget appbar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      iconTab(Icon(Icons.arrow_back, color: Colors.black), false, context),
      SizedBox(
        width: 20,
      ),
      Text(
        "Homes for Rent",
        style: TextStyle(color: Colors.black),
      ),
      SizedBox(
        width: 100,
      ),
      Expanded(
        flex: 2,
        child: iconTab(Icon(Icons.menu, color: Colors.black), true, context),
      ),
    ],
  );
}

Widget iconTab(Icon child, bool check, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (!check) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    },
    child: child,
  );
}
