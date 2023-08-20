import 'package:flutter/material.dart';

const splashBackgroundColor = Color(0xff2B60DE);
const backGroundColor = Color(0xffE5ECFC);

Widget sizeVer(double height) {
  return SizedBox(
    height: height,
  );
}

Widget sizeHor(double width) {
  return SizedBox(width: width);
}

Widget blueText(String text) {
  return Text(
    text,
    style: const TextStyle(
      // decoration: TextDecoration.underline,
      color: splashBackgroundColor,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
  );
}

Widget headerText(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget subHeaderText(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget normalText(String text, Color color) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
  );
}

Widget text(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
    ),
  );
}
