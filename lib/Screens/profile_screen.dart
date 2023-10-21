

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.white,
           appBar: AppBar(
             backgroundColor: Colors.grey.shade100,
             title: Center(
               child: Text('Profile',
                 style: TextStyle(
                   color: Colors.grey,
                 ),
               ),
             ),
           ),
          body: body(),
        )
    );
  }
}

Widget body(){

  return Column(
    children: [
      SizedBox(height: 30,),
      ProfilePicture(),
      SizedBox(height: 20,),
      ProfileMenu(
        text: "My Properties",
        icon: Icon(Icons.house,
          weight: 22,
          color: Colors.grey,
        ),
        press: (){},
      ),
      ProfileMenu(
        text: "Profile Settings",
        icon: Icon(Icons.settings,
          weight: 22,
          color: Colors.grey,
        ),
        press: (){},
      ),
      ProfileMenu(
        text: "Contact Us",
        icon: Icon(Icons.phone,
          weight: 22,
          color: Colors.grey,
        ),
        press: (){},
      ),
      ProfileMenu(
        text: "Feedback",
        icon: Icon(Icons.thumb_up,
          weight: 22,
          color: Colors.grey,
        ),
        press: (){},
      ),
      ProfileMenu(
        text: "Log Out",
        icon: Icon(Icons.logout,
          weight: 22,
          color: Colors.red,
        ),
        press: (){},
      ),

    ],
  );
}
Widget ProfilePicture() {
  return Column(
    children: [
      SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                child: Text("R"),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                      height: 46,
                      width: 46,
                      child: TextButton(

                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            side: BorderSide(color: Colors.white),
                            backgroundColor: Color(0xFFF5F6F9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))
                        ),
                        child: Icon(Icons.camera_alt,
                          color: Colors.grey,

                        ),
                        onPressed: () {},
                      )))
            ],
          )
      ),
    ],
  );
}

class ProfileMenu extends StatelessWidget {
  ProfileMenu({
    required this.text,
    required this.icon,
    required this.press,
});
  final String text;
  final Icon icon;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(20),
            backgroundColor: Color(0xFFF5F6F9),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
        ),
        onPressed:press,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 20,
            ),
            Expanded(child: Text(text,
            style: TextStyle(
              color: Colors.black
            ),
            )),
            Icon(Icons.arrow_forward_ios,
                weight: 22,
                color: Colors.black
            ),

          ],


        ),
      ),
    );
  }
}
