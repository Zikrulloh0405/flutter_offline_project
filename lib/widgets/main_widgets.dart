import 'package:flutter/material.dart';

Widget text(
    {required String text,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
  );
}

Widget icon({required IconData icon, double? size, Color? color}) {
  return Icon(
    icon,
    size: size,
    color: color,
  );
}

Widget space({required bool position, required double size}) => position
    ? SizedBox(
        height: size,
      )
    : SizedBox(
        width: size,
      );

Widget buttons({required Future navigator, required String nameOfButtonn}) {
  return MaterialButton(
    onPressed: () {
      navigator;
    },
    child: text(text: nameOfButtonn),
  );
}
