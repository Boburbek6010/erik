import 'package:flutter/material.dart';

bool unpredictable = false;

class ThemeService {


  static Color darkBackgroundColor() {
    return unpredictable
        ? Colors.grey.shade400
        : Colors.grey.shade900;
  }

  static Color darkTextColor() {
    return unpredictable
        ? Colors.black
        : Colors.white;
  }


}
