import 'package:flutter/material.dart';

/// -- light and dark elevated button themes

class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // to avoid creating instances

  /// -- light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF0961F5),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Color(0xFF0961F5)),
      padding: const EdgeInsets.symmetric(vertical: 14),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    ),
  );
}
