import 'package:flutter/material.dart';

class ColorsValues {
  ColorsValues([this.isDark = true]);
  bool isDark;
  appMostUsedColor() {
    return isDark ? Colors.blueGrey.shade900 : Colors.blueGrey.shade300;
  }

  inactiveColor() => isDark ? Colors.cyan.shade900 : Colors.black54;
  backgroundColor() => isDark ? Colors.blueGrey.shade800 : Colors.white;
  splashColor() => Colors.black;
  activeColor() => isDark ? Colors.cyan.shade200 : Colors.blue;
  mainFontColor() => isDark ? Colors.white : Colors.blue;
}
