import 'package:flutter/material.dart';

import '../widgets/VerticalList.dart';


class HistoryPage extends StatelessWidget {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: appbar(),
          ),
          body: VerticalList(true),
        )
    );
  }
}
Widget appbar(){
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "Purchased Houses",
          style: TextStyle(color: Colors.black),
        ),
       Icon(Icons.filter_list_sharp,
         color: Colors.black,),
      ],
    );
}
