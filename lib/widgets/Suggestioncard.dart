import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class Suggestioncard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriends;
  final void Function() removefriend;

  Suggestioncard(
      {required this.avatar,
      required this.name,
      required this.mutualFriends,
      required this.addFriends,
      required this.removefriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [suggestionImage(), suggestionDetails()],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 140,
          color: Colors.grey[200],
          child: Column(
            children: [
              ListTile(
                title: Text(name != null ? name : ""),
                subtitle: Text(mutualFriends != null ? mutualFriends : ""),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                      buttonAction: addFriends,
                      buttonicon: Icons.account_box,
                      buttonColor: Colors.blue,
                      buttonTextColor: Colors.white,
                      buttonText: "Add friend",
                      buttonIconColor: Colors.white,
                    ),
                    blankButton(
                        buttonAction: removefriend,
                        buttonText: "Remove",
                        buttonColor: Colors.grey,
                        buttonTextColor: Colors.black87,
                        buttonicon: Icons.remove)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
    required IconData buttonicon,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAction,
      label: Text(buttonText, style: TextStyle(color: buttonTextColor)),
      icon: Icon(buttonicon),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonicon,
    required Color buttonColor,
    required Color buttonTextColor,
    required String buttonText,
    required Color buttonIconColor,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonicon, color: buttonIconColor),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: avatar != null
              ? Image.asset(avatar, height: 180, fit: BoxFit.cover)
              : SizedBox()),
    );
  }
}
