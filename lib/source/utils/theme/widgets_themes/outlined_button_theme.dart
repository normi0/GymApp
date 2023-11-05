import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:flutter/material.dart';

class GOutLinedButtonTheme {
  GOutLinedButtonTheme._();
  static final LightOutLinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: gDarkcolor,
      side: const BorderSide(
        color: gDarkcolor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: gButtonHeight,
      ),
    ),
  );
  static final DarkOutLinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
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
