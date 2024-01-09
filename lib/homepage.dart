import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerbuttonsection.dart';
import 'package:facebook/sections/status section.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerbutton.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularbutton.dart';
import 'package:facebook/sections/roomsection.dart';
import 'package:facebook/sections/Suggestion section.dart';
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget Thindivider = Divider(thickness: 1, color: Colors.grey[200]);
    Widget Thickdivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("go to search key");
                }),
            CircularButton(
                buttonIcon: Icons.messenger,
                buttonAction: () {
                  print("chat screen appears");
                }),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Thindivider,
            Headerbuttonsection(
                buttonone: Headerbutton(
                    buttontext: "Live",
                    buttonicon: Icons.video_call,
                    buttonaction: (){
                      print("go to video call");
                    },
                    buttoncolour: Colors.red),
                buttontwo: Headerbutton(
                    buttontext: "Photo",
                    buttonicon: Icons.photo_library,
                    buttonaction: (){
                       print('Photo library');
                    },
                    buttoncolour: Colors.green),
                buttonthree: Headerbutton(
                    buttontext: "Room",
                    buttonicon: Icons.video_call,
                    buttonaction: (){
                      print("Create room");
                    },
                    buttoncolour: Colors.purple)),
            Thickdivider,
            Roomsection(),
            Thickdivider,
            Storysection(),
            Thickdivider,
            Postcard(
              avatar: sajin,
              name: "Sajin duglas",
              publishedAt: '3hr',
              posttitle: '****',
              postimage: sajin,
              likecount: '7k',
              sharecount: '2k',
              commentcount: '5k',
            ),
            Thickdivider,
            Postcard(
              avatar:Athulya,
              name: "Jenifer",
              publishedAt: '6hr',
              posttitle: '',
              postimage: Athulya,
              likecount: '77k',
              sharecount: '22k',
              Showbluetick: false,
              commentcount: '25k',
            ),
            Thickdivider,
            Postcard(
              avatar: alPacino1,
              name: "Al pacino",
              publishedAt: '14hr',
              posttitle: '',
              postimage: alPacino,
              likecount: '77k',
              sharecount: '22k',
              Showbluetick: true,
              commentcount: '25k',
            ),
            Thickdivider,
             Suggestionsection(),
            Postcard(
              avatar: dq1,
              name: "Dq",
              publishedAt: '1 day ',
              posttitle: '',
              postimage: dq,
              likecount: '77k',
              sharecount: '22k',
              Showbluetick: true,
              commentcount: '25k',
            ),
            Thickdivider,
            Postcard(
              avatar: srk,
              name: "Prasanth",
              publishedAt: '2 day ',
              posttitle: '',
              postimage: tajmahal,
              likecount: '777',
              sharecount: '22',
              Showbluetick: false,
              commentcount: '25',
            ),
          ],
        ),
      ),
    );
  }
}
