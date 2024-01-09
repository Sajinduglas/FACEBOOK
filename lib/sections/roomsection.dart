import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Roomsection extends StatelessWidget {
  //const Roomsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10), //avatarsinu equal distance verran ayittu
        children: [
          CreateRoombutton(),
          Avatar(displayimage: sajin,displaystatus: true,),
          // Avatar(displayimage:wamiqa1 ),
          Avatar(displayimage: srk,displaystatus: true),
          Avatar(displayimage: dicaprio,displaystatus: true),
          Avatar(displayimage: tovi,displaystatus: true),
          Avatar(displayimage: alPacino,displaystatus: true),
          Avatar(displayimage: dq,displaystatus: true),
          Avatar(displayimage: mammootty,displaystatus: true),
          Avatar(displayimage: robertDinro,displaystatus: true),
          Avatar(displayimage: mohanLal,displaystatus: true ),
        ],
      ),
    );
  }

  Widget CreateRoombutton() {
    // code better akan vandey function call cheyunnu ondu
    return Container(
      padding: EdgeInsets.only(right: 5, left: 5),
      child: OutlinedButton.icon(
        onPressed: () {
          print("create a chat room");
        },
        style: OutlinedButton.styleFrom(shape: StadiumBorder()),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "CREATE \n ROOM",
          style: TextStyle(),
        ),
      ),
    );
  }
}
