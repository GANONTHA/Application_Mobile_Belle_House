import 'package:flutter/widgets.dart';

class Dimension {
  static double screenHeight = 0;
  static double screenWidth = 0;

  //container
  static double pageViewContainer = 0;
  static double pageViewDetails = 0;
  static double paddingTen = 0;
  static double paddingTwenty = 0;
  static double sizeFourteen = 0;
  static double sizeTwelve = 0;
  static double sizeThirty = 0;
  static double sizeFithteen = 0;
  static double sizeSixteen = 0;
  static double sizeFive = 0;
  static double sizeTwo = 0;
  static double sizeThree = 0;
  static double sizeEight = 0;
  static double sizeTenZero = 0;
  static double sizeFourthy = 0;
  static double sizeThirtyFive = 0;
  static double sizeFourthyFive = 0;
  static double sizeSeventhy = 0;
  static double pageViewNearest = 0;

  //popular food
  static double popularFoodImageHeight = 0;

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    pageViewContainer = screenHeight / 3.84;
    pageViewDetails = screenHeight / 11.04;
    pageViewNearest = screenHeight / 8.43;
    paddingTen = screenHeight / 84.3;
    paddingTwenty = screenHeight / 42.15;
    sizeTwelve = screenHeight / 70.25;
    sizeFourteen = screenHeight / 60.21;
    sizeFithteen = screenHeight / 56.2;
    sizeTwo = screenHeight / 320.5;
    sizeThree = screenHeight / 281.5;
    sizeFive = screenHeight / 128.2;
    sizeThirty = screenHeight / 28.1;
    sizeSixteen = screenHeight / 52.68;
    sizeTenZero = screenHeight / 7.66;
    sizeEight = screenHeight / 110.37;
    sizeFourthy = screenHeight / 21.07;
    sizeThirtyFive = screenHeight / 24.1;
    sizeFourthyFive = screenHeight / 18.77;
    sizeSeventhy = screenHeight / 12.04;
    popularFoodImageHeight = screenHeight / 2.40;
  }
}
