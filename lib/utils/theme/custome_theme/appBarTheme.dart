import 'package:flutter/material.dart';

class AppBarthemes {
  AppBarthemes._();

  static const LightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 20,
      ),
      actionsIconTheme: IconThemeData(color: Colors.black, size: 20),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ));
}
