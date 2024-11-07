import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme{
  static ThemeData lightTheme=ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xffDFECDB),
      secondary: Color(0xff5D9CEC),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff383838),
      onPrimaryFixed: Color(0xff61E757),
      onSecondaryFixed: Color(0xffEC4B4B),
      onSurface: Color(0xff141922),
    ),
    scaffoldBackgroundColor:const Color(0xffDFECDB),
    appBarTheme: const AppBarTheme(),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xffffffff),
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xffffffff),
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xffffffff),
      ),

      bodyLarge: GoogleFonts.roboto(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color(0xff5D9CEC),
      ),
      labelSmall: GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xff5D9CEC),
      ),

      labelMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xff5D9CEC),
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xff383838),
      ),


      headlineSmall: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xffA9A9A9),
      ),
    ),

  );
}