

import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle headingText_textStyle(double fontsize, Color color){
  return TextStyle(
    color: color,
    fontSize: fontsize,
    fontWeight: FontWeight.normal,
      fontFamily: "Funnel-Sans"
  );
}
TextStyle normalText_textStyle(double fontsize, Color color){
  return TextStyle(
      color: color,
      fontSize: fontsize,
      fontFamily: "Barlow-Light"
  );
}