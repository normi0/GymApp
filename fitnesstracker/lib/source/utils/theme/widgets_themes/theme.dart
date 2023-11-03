import 'package:fitnesstracker/source/utils/theme/widgets_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TtextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
    // brightness: Brightness.light,
    // primarySwatch: const MaterialColor(
    //   0xff9c27b0,
    //   <int, Color>{
    //     50: Color(0xFFF3E5F5),
    //     100: Color(0xFFE1Bee7),
    //     200: Color(0xffce93d8),
    //     300: Color(0xffba68c8),
    //     400: Color(0xffab47bc),
    //     500: Color(0xff9c27b0),
    //     600: Color(0xff8e24aa),
    //     700: Color(0xff7b1fa2),
    //     800: Color(0xff6a1b9a),
    //     900: Color(0xff4a148c),
    //   },
    // ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TtextTheme.darckTextTheme,
    // primarySwatch: const MaterialColor(
    //   0xff9c27b0,
    //   <int, Color>{
    //     50: Color(0xFFF3E5F5),
    //     100: Color(0xFFE1Bee7),
    //     200: Color(0xffce93d8),
    //     300: Color(0xffba68c8),
    //     400: Color(0xffab47bc),
    //     500: Color(0xff9c27b0),
    //     600: Color(0xff8e24aa),
    //     700: Color(0xff7b1fa2),
    //     800: Color(0xff6a1b9a),
    //     900: Color(0xff4a148c),
    //   },
    // ),
  );
}
