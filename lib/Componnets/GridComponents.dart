import 'package:flutter/material.dart';

class GridComponents extends StatelessWidget{
  final PropertyIcons;
 final  PropertyType;
  GridComponents(this.PropertyIcons,this.PropertyType);
  @override
  Widget build(BuildContext context) {
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
}
