import 'package:flutter/material.dart';

Widget MyHeaderDrawer() {
  return Container(
    color: Colors.green.shade700,
    width: double.infinity,
    height: 200,
    padding: EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 80,
          width: 100,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            child: Image.asset("assets/images/programmer.png"),
          ),
        ),
        Text(
          "Rahool Rathi",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "rahoolrathi12@gmail.com",
          style: TextStyle(color: Colors.grey.shade200, fontSize: 14),
        ),
      ],
    ),
  );
}

Widget MyDrawerList() {
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        menuItem(
            Icon(
              Icons.home,
              color: Colors.grey,
            ),
            "Home"),
        menuItem(Icon(Icons.add, color: Colors.grey), "Add Property"),
        menuItem(Icon(Icons.search, color: Colors.grey), "Search Property"),
        menuItem(
            Icon(
              Icons.holiday_village_sharp,
              color: Colors.grey,
            ),
            "My Property"),
        menuItem(Icon(Icons.person, color: Colors.grey), "Profile"),
        menuItem(Icon(Icons.phone, color: Colors.grey), "Contact Us"),
        menuItem(Icon(Icons.info, color: Colors.grey), "About  Us"),
        menuItem(Icon(Icons.logout, color: Colors.grey), "Log Out"),
      ],
    ),
  );
}

Widget menuItem(Icon icon, String text) {
  return Material(
    child: InkWell(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(child: icon),
            Expanded(
                flex: 3,
                child: Text(
                  text,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
          ],
        ),
      ),
    ),
  );
}