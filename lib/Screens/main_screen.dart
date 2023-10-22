import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:housing_hub/data.dart';

import '../defined_constants.dart';
import '../widgets/list_componnet_widget.dart';
import 'SearchScreen.dart';
import 'add_bottom_sheet.dart';

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
          _buildSearchBar(context),
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
                  GridComponnets(),
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
                  BottomComponnets()
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

  Widget BottomComponnets() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 10; i++)
            ListComponnetWidget(
              orientation: LayoutOrientation.vertical,
              height: vertical_height,
              width: vertical_width,
              issold: false,
            )
        ],
      ),
    );
  }

  Widget GridComponnets() {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      // Adjust padding here
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PropertyIcons[index],
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    PropertyType[index],
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "120 items",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: GestureDetector(
        onTap: () {
          print("hello");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchPage()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                hintText: "Search",
                suffixIcon: Container(
                  margin: EdgeInsets.all(5),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      showModalBottomSheet(context: context, builder:(context)=>AddBottomSheet());
                    },
                    child:Icon(
                    Icons.filter_list_sharp,
                    color: Colors.white,
                  ),)
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget buildButtomSheet(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(20),
      ),
    ),
    child: Column(
      children: [
        // Add your bottom sheet content here
        ListTile(
          title: Text('Option 1'),
          onTap: () {
            // Handle option 1
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Option 2'),
          onTap: () {
            // Handle option 2
            Navigator.pop(context);
          },
        ),
        // Add more options if needed
      ],
    ),
  );
}

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
