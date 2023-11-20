import 'package:flutter/material.dart';

import '../Screens/SearchScreen.dart';
import '../Screens/add_bottom_sheet.dart';
class buildSearch extends StatelessWidget {
  const buildSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

