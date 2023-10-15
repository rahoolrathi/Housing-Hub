import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:housing_hub/data.dart';

import '../defined_constants.dart';
import '../widgets/list_componnet_widget.dart';

class MainPage extends StatelessWidget {
  final List<Property> properties = getPropertyList();
  final PropertyIcons = <Widget>[
    Icon(Icons.home),
    Icon(Icons.home),
    Icon(Icons.home),
    Icon(Icons.home)
  ];
  final PropertyType = [
    'Home',
    'Home',
    'Home',
    'Home',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildSearchBar(),
          SizedBox(
            height: 50,
          ),

             Expanded(
               child:SingleChildScrollView(
                 child:Container(
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
                  GridView.builder(
                      padding: EdgeInsets.all(10), // Adjust padding here
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.5,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              PropertyIcons[index],
                              Text(
                                PropertyType[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("New Projects",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )),
                        TextButton(onPressed: (){}, child: Text("See all"),),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for(var i=0;i<10;i++)
                         ListComponnetWidget(orientation: LayoutOrientation.vertical,height: vertical_height,width: vertical_width)
                      ],
                    ),
                  )
                ],

              ),
            ),
             ))
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
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
                child: Icon(
                  Icons.filter_list_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



