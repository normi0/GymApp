import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassName {
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 24,
    ),
  );
  static TextTheme darckTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
  );
}
