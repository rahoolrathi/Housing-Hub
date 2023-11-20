import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:housing_hub/data.dart';

import '../Componnets/GridComponents.dart';
import '../Componnets/BottomComponents.dart';
import '../Componnets/_buildSearchBar_componntes.dart';
import '../widgets/_drawer_widget.dart';


class MainPage extends StatelessWidget {
  final List<Property> properties = getPropertyList();
  final PropertyIcons = <Widget>[
    Icon(Icons.home,color: Colors.green),
    Icon(Icons.home_work_outlined,color: Colors.yellow,),
    Icon(Icons.holiday_village_sharp, color: Colors.blue.shade700,),
    Icon(Icons.hotel,color: Colors.red,)
  ];
  final PropertyType = [
    'Home',
    'Flat',
    'Apartment',
    'Hotel',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
      leading: Builder(
      builder: (BuildContext context) {
      return IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      );
    },
      ),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildSearch(),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "Find Properties",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridComponents(PropertyIcons,PropertyType),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("New Projects",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )),
                        TextButton(
                          onPressed: () {},
                          child: Text("See all"),
                        ),
                      ],
                    ),
                  ),
                  BottomComponents()
                ],
              ),
            ),
          ))
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          )),
        ),
      ),
    );
  }






}



