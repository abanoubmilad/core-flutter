import 'dart:math';

import 'package:flutter/material.dart';

const _preferredFormWidth = 400.0;

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getPreferredFormWidth(BuildContext context) =>
    min(getScreenWidth(context) - 40, _preferredFormWidth);

TextStyle regularText(fontSize) =>
    TextStyle(fontSize: fontSize, fontFamily: "WorkSansRegular");

TextStyle boldText(fontSize) =>
    TextStyle(fontSize: fontSize, fontFamily: "WorkSansBold");

TextStyle mediumText(fontSize) =>
    TextStyle(fontSize: fontSize, fontFamily: "WorkSansMedium");

// colors

const Color silverGray = const Color(0xffbdc3c7);
const Color alphaGray = const Color(0x442B2B2B);
const Color darkGray = const Color(0xee2B2B2B);
const Color redError = const Color(0xffFF6666);

const Color bgGradientStart = const Color(0xFFDCE35B);
const Color bgGradientEnd = const Color(0xFF45B649);

const Color buttonGradientStart = const Color(0xFF00d2ff);
const Color buttonGradientEnd = const Color(0xFF3a7bd5);

const bgGradient = const LinearGradient(
  colors: const [bgGradientStart, bgGradientEnd],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const buttonGradient = const LinearGradient(
  colors: const [buttonGradientStart, buttonGradientEnd],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
