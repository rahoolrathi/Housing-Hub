import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
              backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.back_hand),
                Text("Homes for sale")
              ],
            ),
          ),
          ),
    );
  }
}
