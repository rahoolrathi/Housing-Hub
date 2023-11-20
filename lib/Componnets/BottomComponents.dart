import 'package:flutter/material.dart';

import '../Screens/list_componnet_widget.dart';
import '../defined_constants.dart';

class BottomComponents extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
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
}
