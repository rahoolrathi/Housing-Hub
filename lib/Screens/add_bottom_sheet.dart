

import 'package:flutter/material.dart';

class AddBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.only(top:10,left:0,right: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
              )
          ),
         child:CustomScrollView(
           slivers: <Widget>[
             SliverAppBar(
               pinned: true, // The app bar will remain visible at the top
               expandedHeight: 50, // Height of the app bar when it is expanded
               backgroundColor: Colors.white,
               flexibleSpace: FlexibleSpaceBar(
                 title: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       "Filters",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w400,
                         color: Colors.black,
                       ),
                     ),
                     TextButton(
                       onPressed: () {},
                       child: Text("Done", style: TextStyle(color: Colors.black)),
                     ),
                   ],
                 ),
               ),
             ),
             SliverList(
               delegate: SliverChildBuilderDelegate(
                     (BuildContext context, int index) {
                   // Add your list items here
                  if(index==0)
                    return ListTile(
                      title: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: Column(
                          children: [
                            Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.place,color: Colors.grey,),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("City",style:TextStyle(fontWeight: FontWeight.w500),),
                                      Text("Karachi",style: TextStyle(color: Colors.green),)
                                    ],
                                  )
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  weight: 22,
                                  color: Colors.black
                              ),

                            ],
                          ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider( // Horizontal Divider
                              color: Colors.grey.shade200,
                              thickness: 1.5, // Thickness of the divider
                              indent: 0, // Indent from the left
                              endIndent: 0, // Indent from the right
                            ),
                          ]
                        ),

                      ),
                    );
                  if(index==1)
                    return ListTile(
                        title: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.square_foot, color: Colors.grey),
                                  SizedBox(width: 5),
                                  Text("Property Type", style: TextStyle(fontWeight: FontWeight.w500)),
                                  SizedBox(width: 10), // Add spacing between text and input fields

                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 100, // Adjust the width based on your requirements
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15), // Rounded corners
                                      border: Border.all(color: Colors.grey), // Border color
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number, // Allow only numeric input
                                        decoration: InputDecoration(
                                          border: InputBorder.none, // No border for the input field
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text("TO",style: TextStyle(fontWeight: FontWeight.w500)),
                                  Container(
                                    height: 40,
                                    width: 100, // Adjust the width based on your requirements
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15), // Rounded corners
                                      border: Border.all(color: Colors.grey), // Border color
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number, // Allow only numeric input
                                        decoration: InputDecoration(
                                          border: InputBorder.none, // No border for the input field
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Divider( // Horizontal Divider
                                color: Colors.grey.shade200,
                                thickness: 1.5, // Thickness of the divider
                                indent: 0, // Indent from the left
                                endIndent: 0, // Indent from the right
                              ),
                            ],
                          )


                          ,


                        )
                    );
                  if(index==2)
                    return ListTile(
                      title: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.price_check, color: Colors.grey),
                                SizedBox(width: 5),
                                Text("Price Range", style: TextStyle(fontWeight: FontWeight.w500)),
                                SizedBox(width: 10), // Add spacing between text and input fields

                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 100, // Adjust the width based on your requirements
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15), // Rounded corners
                                    border: Border.all(color: Colors.grey), // Border color
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number, // Allow only numeric input
                                      decoration: InputDecoration(
                                        border: InputBorder.none, // No border for the input field
                                      ),
                                    ),
                                  ),
                                ),
                                Text("TO",style: TextStyle(fontWeight: FontWeight.w500)),
                                Container(
                                  height: 40,
                                  width: 100, // Adjust the width based on your requirements
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15), // Rounded corners
                                    border: Border.all(color: Colors.grey), // Border color
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number, // Allow only numeric input
                                      decoration: InputDecoration(
                                        border: InputBorder.none, // No border for the input field
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Divider( // Horizontal Divider
                              color: Colors.grey.shade200,
                              thickness: 1.5, // Thickness of the divider
                              indent: 0, // Indent from the left
                              endIndent: 0, // Indent from the right
                            ),
                          ],
                        )


                        ,


                      ),
                    );
                  if(index==3)
                    return ListTile(
                        title: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.square_foot, color: Colors.grey),
                                  SizedBox(width: 5),
                                  Text("Area Range", style: TextStyle(fontWeight: FontWeight.w500)),
                                  SizedBox(width: 10), // Add spacing between text and input fields

                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 100, // Adjust the width based on your requirements
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15), // Rounded corners
                                      border: Border.all(color: Colors.grey), // Border color
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number, // Allow only numeric input
                                        decoration: InputDecoration(
                                          border: InputBorder.none, // No border for the input field
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text("TO",style: TextStyle(fontWeight: FontWeight.w500)),
                                  Container(
                                    height: 40,
                                    width: 100, // Adjust the width based on your requirements
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15), // Rounded corners
                                      border: Border.all(color: Colors.grey), // Border color
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number, // Allow only numeric input
                                        decoration: InputDecoration(
                                          border: InputBorder.none, // No border for the input field
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          )


                          ,


                        )
                    );
                 },
                 childCount: 4, // Replace this with the actual number of items in your list
               ),
             ),
           ],
         ),

        ),
    );
  }
}

