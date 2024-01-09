import 'package:flutter/material.dart';

class Headerbuttonsection extends StatelessWidget {
  final Widget  buttonone;
  final Widget  buttontwo;
  final Widget  buttonthree;

  Headerbuttonsection({
    required this.buttonone,
    required this.buttontwo,
    required this.buttonthree,
  });

  // const ({super.key});


  @override
  Widget build(BuildContext context) {
    Widget verticaldivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300], //300intensity
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //headerbutton space eventyally akann
        children: [
          ///starting evidey cheyum anittu simple akan function akum
          // TextButton.icon(
          //     onPressed: () {
          //       print("LIVE BUTTON CLICKED");
          //     },
          //     icon: Icon(Icons.video_call),
          //     label: Text("LIVE")),
          buttonone,
          verticaldivider, //line 19
          buttontwo,
          verticaldivider,
          buttonthree
        ],
      ),
    );
  }
}
