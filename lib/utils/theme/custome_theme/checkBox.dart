import 'package:flutter/material.dart';

class CheckBoxTheme {
  CheckBoxTheme._();

  static CheckboxThemeData LightCheckBox = CheckboxThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Colors.white30.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(4),
      ),
      checkColor: MaterialStateProperty.resolveWith((states) {
        // the color of the check icon inside the fill color of the checkbox in here:
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Color(0xFF0961F5);
        } else {
          return Colors.transparent;
        }
      }));
}
