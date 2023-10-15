import 'package:flutter/material.dart';
import '../data.dart';

final List<Property> property = getPropertyList();

enum LayoutOrientation { vertical, horizontal }

class ListComponnetWidget extends StatefulWidget {
  const ListComponnetWidget({required this.orientation, required this.width, required this.height});

  final LayoutOrientation orientation;
  final double height;
  final double width;

  @override
  _ListComponnetWidgetState createState() => _ListComponnetWidgetState();
}

class _ListComponnetWidgetState extends State<ListComponnetWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              return Container(
                  width: widget.width,
                  height: widget.height,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: widget.orientation == LayoutOrientation.vertical
                      ? Vertical()
                      : Horizontal()
              );
            },
          );
        }
    );
  }
  // Vertical Widget

  Widget Vertical(){
    return Column(
      children: [
        ImageContainer(double.infinity,100,false),
        SizedBox(height: 15),
        TextContainer()
      ],
    );
  }
  // Horizonatal Widget

  Widget Horizontal(){
    return Row(
      children: [ImageContainer(140,double.infinity,false), SizedBox(width: 15), TextContainer()],
    );
  }

  Widget ImageContainer(double w, double h, bool isSold) {
    if (property.isEmpty) {
      return Container(); // Return an empty container if the property list is empty
    }
    return Stack(
      children: <Widget>[
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(property[0].frontImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Icon(
            isSold ? Icons.check_circle : Icons.monetization_on,
            color: Colors.yellow,
            size: 30,
          ),
        ),
      ],
    );
  }


  Widget TextContainer() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "400.00",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.location_city_sharp,
                size: 16,
                color: Colors.red,
              ),
              SizedBox(width: 5),
              Text(
                "Karachi/Pakistan",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 40),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.bedroom_child, size: 26),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "${5}",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.bathtub, size: 26),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "5",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.straighten, size: 26),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// for horizontal orientation: LayoutOrientation.horizontal,height:150,width: MediaQuery.of(context).size.width
// for vertical