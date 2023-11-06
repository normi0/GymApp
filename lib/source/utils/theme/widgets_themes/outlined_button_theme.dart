import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:flutter/material.dart';

class GOutLinedButtonTheme {
  GOutLinedButtonTheme._();
  static final lightOutLinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      foregroundColor: gDarkcolor,
      side: const BorderSide(
        color: gDarkcolor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: gButtonHeight,
      ),
    ),
  );
  static final darkOutLinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      foregroundColor: gWhitecolor,
      side: const BorderSide(
        color: gWhitecolor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: gButtonHeight,
      ),
    ),
  );
}
