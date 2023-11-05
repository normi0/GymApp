import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:flutter/material.dart';

class GElevatedButtonTheme {
  GElevatedButtonTheme._();

  static final LightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: gWhitecolor,
      backgroundColor: gDarkcolor,
      side: const BorderSide(
        color: gDarkcolor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: gButtonHeight,
      ),
    ),
  );
  static final DarkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: gDarkcolor,
      backgroundColor: gWhitecolor,
      side: const BorderSide(
        color: gDarkcolor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: gButtonHeight,
      ),
    ),
  );
}
