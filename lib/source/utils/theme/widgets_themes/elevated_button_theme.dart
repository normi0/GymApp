import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:flutter/material.dart';

class GElevatedButtonTheme {
  GElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
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
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
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
