import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation ?orientation;

  void init(BuildContext context){
    _mediaQueryData=MediaQuery.of(context);
    screenWidth=_mediaQueryData!.size.width;
    screenHeight=_mediaQueryData!.size.height;
    orientation=_mediaQueryData!.orientation;
  }
}

double getProportionateHeight(double inputHeight, BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  return (inputHeight / 812) * screenHeight;
}

double getProportionateWidth(double inputWidth,BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return (inputWidth / 375) * screenWidth;
}

double Height(double inputHeight,BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  return (inputHeight / 812) * screenHeight;}

double Width(double inputHeight,BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return (inputHeight / 375) * screenWidth;}