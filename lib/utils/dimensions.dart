import 'package:flutter/widgets.dart';

class Dimension {
  static double screenHeight = 0;
  static double screenWidth = 0;

  //container
  static double pageViewContainer = 0;

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    pageViewContainer = screenHeight / 3.84;
  }
}
