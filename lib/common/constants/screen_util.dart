import 'package:flutter/material.dart';

//benefit: great for mobile device cause it initialize the wide in the beginning and not change lively
//problem: not suitable for desktop device cause when change the size of the app it doesn't change lively
class ScreenUtil {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double wide = 0;
  static double logoSize = 0;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    wide = screenWidth * screenHeight;
    logoSize = wide * 0.0004;
  }
}
