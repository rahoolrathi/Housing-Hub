import 'package:flutter/material.dart';
import 'package:housing_hub/Screens/main_screen.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/house_01.jpg",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 70,
                        left: 30,
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  height: 65,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/house_01.jpg"),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rahool Rathi",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Property Owner",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16,),
                                Container(
                                  width: 45,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius:BorderRadius.circular(10)
                                  ),
                                  child: TextButton(
                                    onPressed: (){},
                                    child: Icon(Icons.phone,color: Colors.green,),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  width: 45,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius:BorderRadius.circular(10)
                                  ),
                                  child: TextButton(
                                    onPressed: (){},
                                    child: Icon(Icons.message,color: Colors.green),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  width: 45,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius:BorderRadius.circular(10)
                                  ),
                                  child: TextButton(
                                    onPressed: (){},
                                    child:Image.asset("assets/images/whatsapplogo.png",fit: BoxFit.fill,)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text("3",
                                      style: TextStyle(
                                        color: Colors.grey.shade500
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(Icons.area_chart,
                                    color: Colors.yellow,
                                      size: 25,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("3",
                                      style: TextStyle(
                                          color: Colors.grey.shade500
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(Icons.bedroom_child_outlined,
                                      color: Colors.yellow,
                                      size: 25,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("3",
                                      style: TextStyle(
                                          color: Colors.grey.shade500
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(Icons.bathtub,
                                      color: Colors.yellow,
                                      size: 25,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("3",
                                      style: TextStyle(
                                          color: Colors.grey.shade500
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(Icons.local_parking_outlined,
                                      color: Colors.yellow,
                                      size: 25,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Descripation",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child:Text(
                          "ABUL QASIM VILLASPrime location of Bahria Town3 Bed Duplex Villas3.25 years easy installments plan.LocationPrecent 18 Legacy Commercial closed with imtiaz super market & AQ super market, Bahria Town Karachi.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500
                          ),
                        ),
                      ),)
                    ),
                    Row(children: [
                      Text("Location",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(Icons.place,
                      color: Colors.red,
                        size: 30,
                      ),
                    ],),
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(top: 10,right: 5,bottom: 10,left: 5),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/images/example.jpg",
                        fit: BoxFit.fill,
                        ),
                      ),
                    ),),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
