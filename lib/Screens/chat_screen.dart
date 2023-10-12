import 'package:flutter/material.dart';


class ChatPage extends StatelessWidget {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body: Center(
            child: Text(
              "chat Page",
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
