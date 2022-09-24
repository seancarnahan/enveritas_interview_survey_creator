import 'package:flutter/material.dart';

class BrandedTextStyle {

  static TextStyle h1Bold(Color color) {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 54,
      color: color
    );
  }

  static TextStyle b1Reg(Color color) {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 30,
      color: color
    );
  }

  static TextStyle b2Label(Color color) {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: color
    );
  }

  static TextStyle b2LabelBold(Color color) {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: color
    );
  }

  static TextStyle b3Legal(Color color) {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: color
    );
  }
}
