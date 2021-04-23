class ScaleScreenSize {
  static double widthDesign = 375;
  static double heightDesign = 812;

  static double getScaleValue(double param, double sizeScreen, bool isHeight) {
    if (isHeight) {
      return param * sizeScreen / heightDesign;
    } else {
      return param * sizeScreen / widthDesign;
    }
  }
}
