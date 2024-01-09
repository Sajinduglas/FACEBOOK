import 'package:flutter/material.dart';

Widget Headerbutton(
    {required String buttontext,
      required IconData buttonicon,
      required void Function() buttonaction,
      required Color buttoncolour}) {
  return TextButton.icon(
      onPressed: buttonaction,
      icon: Icon(
        buttonicon,
        color: buttoncolour,
      ),
      label: Text(buttontext));
}