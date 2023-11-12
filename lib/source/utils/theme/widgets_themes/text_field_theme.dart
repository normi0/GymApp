import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:flutter/material.dart';

class GTextFormFieldTheme {
  GTextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: gDarkcolor,
    floatingLabelStyle: TextStyle(color: gDarkcolor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: gDarkcolor),
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: gSecondarycolor,
    floatingLabelStyle: TextStyle(color: gSecondarycolor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: gSecondarycolor),
    ),
  );
}
