import 'package:flutter/material.dart';

class ChipThemes {
  ChipThemes._();

  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.7),
      labelStyle: TextStyle(
        color: Colors.black,
      ),
      selectedColor: Color(0xFF0961F5),
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      checkmarkColor: Colors.white);
}
