import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayimage: sajin,displaystatus: false,),
      title: TextField(
          decoration: InputDecoration(
        hintText: "Whats's on your mind?",
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: InputBorder.none,
        //borders remove akaan
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      )),
    );
  }
}
