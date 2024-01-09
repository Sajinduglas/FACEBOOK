import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularbutton.dart';
import 'package:flutter/material.dart';

class Storycard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avatar;
  final bool createstorystatus;
  final bool displayborder;

  Storycard({
    required this.labeltext,
    required this.story,
    required this.avatar,
    this.createstorystatus = false,
    this.displayborder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createstorystatus
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      iconColor: Colors.blue,
                      buttonAction: () {
                        print("create new story");
                      })
                  : Avatar(
                      displayimage: avatar,
                      displaystatus: false,
                      displayborder: displayborder,
                      width: 35,
                      height: 35,
                    )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labeltext != null ? labeltext : "n/a",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
