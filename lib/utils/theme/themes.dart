import 'package:flutter/material.dart';

import 'custome_theme/BottomSheetTheme.dart';
import 'custome_theme/ChipTheme.dart';
import 'custome_theme/OutlineButton.dart';
import 'custome_theme/TectThme.dart';
import 'custome_theme/TextFiledTheme.dart';
import 'custome_theme/appBarTheme.dart';
import 'custome_theme/checkBox.dart';
import 'custome_theme/elevetedButton.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: Color(0xFF0961F5),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemes.lightTextTheme,
    chipTheme: ChipThemes.lightChipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: AppBarthemes.LightAppBarTheme,
    checkboxTheme: CheckBoxTheme.LightCheckBox,
    bottomSheetTheme: BottomSheetTheme.LightBottomSheet,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
}
