import 'dart:ui';

class BYCSizeFit {

  static double physicalWidth;
  static double physicalHeight;
  static double screenWidth;
  static double screenHeight;
  static double dpr;
  static double statusHeight;
  static double rpx;
  static double px;

  static void initialize({double standartSize = 750}) {

    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    dpr = window.devicePixelRatio;

    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;

    statusHeight = window.padding.top / dpr;

    rpx = screenWidth / standartSize;
    px = screenWidth * 2 / standartSize;
  }
  static double setRpx(double size) {
    return rpx * size;
  }
  static double setPx(double size) {
    return px * size;
  }
}