import 'package:flutter/material.dart';

class Coloring_apps {
  Coloring_apps._();

  static const Color primary = Color(0xFF0681E4);
  static const Color secondary = Color(0xFFFFA800);
  static const Color accent = Color(0xFF000000);
  static const Color inputBackgroundColor = Color(0xFFF4F6F9);

  //Gradient colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFF5722),
        Color(0xFFFF9800),
      ]);

  //text colors
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Color(0xFFFFA800);
  static const Color textWhite = Colors.white;

  //Background colors
  static const Color light = Color(0xFFF6F6F6);

  //Background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color lightInputContainer = Color(0xFFF4F6F9);

  //Button colors
  static const Color buttonPrimary = Color(0xFF0681E4);

  //Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //Neutral shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
