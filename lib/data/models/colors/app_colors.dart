import 'package:flutter/material.dart';

class AppUsedColors {
  static bool isDark = true;

  Color get widgetsBackgroundColor =>
      isDark ? Colors.blueGrey.shade800 : Colors.white;
  Color get bottomNavBarInactiveColor =>
      isDark ? Colors.cyan.shade900 : Colors.black54;
  Color get appBarFontColor => isDark ? Colors.white : Colors.blue;

  Color get bottomNavBarActiveColor =>
      isDark ? Colors.cyan.shade200 : Colors.blue;

  Color get scaffoldBackgroundColor =>
      isDark ? Colors.blueGrey.shade900 : Colors.blueGrey.shade300;
  Color inactiveColorWhenIsMessenger(int val) =>
      val != 4 ? bottomNavBarActiveColor : bottomNavBarActiveColor;
  Color activeColorWhenIsMessenger(int val) =>
      val == 4 ? bottomNavBarActiveColor : bottomNavBarInactiveColor;

  Color get buttonTextColor =>
      isDark ? Colors.lightBlue.shade600 : Colors.black;
  Color get elButtonBorder =>
      isDark ? Colors.blueGrey.shade800 : Colors.blueGrey.shade400;

  Color get elButtonTextColor =>
      isDark ? Colors.blue.shade400 : Colors.blue.shade900;
  Color get chipColor => isDark ? Colors.grey.shade900 : Colors.grey.shade100;

  Color get whiteToBlack => isDark ? Colors.white : Colors.black;
  Color get whiteToBlackLight => !isDark ? Colors.white38 : Colors.black38;
}
