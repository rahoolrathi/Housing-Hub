import 'package:flutter/material.dart';

import '../defined_constants.dart';
import 'list_componnet_widget.dart';

class VerticalList extends StatelessWidget {
  VerticalList(this.issold);
   bool issold;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10),
      child:ListView.builder(itemBuilder: (context,index){
        return  ListComponnetWidget(
            orientation: LayoutOrientation.horizontal,
            height: horizontal_height,
            width: vertical_width,
             issold: issold,
        );
      },
        itemCount: 20,
      ),
    );
  }
}
