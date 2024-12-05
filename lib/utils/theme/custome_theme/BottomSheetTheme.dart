import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';

class BottomSheetTheme {
  BottomSheetTheme._();

  static BottomSheetThemeData LightBottomSheet = BottomSheetThemeData(
      elevation: 0,
      backgroundColor: Colors.white,
      showDragHandle: true,
      modalBackgroundColor: Colors.white,
      // constraints: const BoxConstraints(minWidth: double.infinit),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ));
}
