import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
   int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body: Center(
            child: Text(
              "Main Page",
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        )
    );
  }
}
