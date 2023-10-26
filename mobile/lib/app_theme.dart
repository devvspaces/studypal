import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const primaryColor = Color.fromRGBO(255, 182, 193, 1); // This is the primary background color
  static const buttonBackgroundColor = primaryColor;
  static const secondaryColor = Color(0xFFD9D9D9);
  static const scaffoldBackgroundColor = Colors.white;
  static const warningColor = Colors.red;
  static const textColors = Colors.black;
  static const iconColors = Colors.black;
  static const containerShadowColor = Colors.black12;
  static const textFieldHintTextColor = Colors.black45;
  static const textFieldFilledColor = Color(0xFFF5F5F5);
  static const errorColor = Color(0xFFD41B35);
  static const buttonTextColor = Colors.white;

  static final lightTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      fillColor: textFieldFilledColor,
      filled: true,
      iconColor: iconColors,
      hintStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textFieldHintTextColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide.none,
      ),
    ),
    buttonTheme: const ButtonThemeData(buttonColor: buttonBackgroundColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(buttonBackgroundColor),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: scaffoldBackgroundColor,
        elevation: 2,
        iconTheme: const IconThemeData(
          color: iconColors,
        ),
        centerTitle: true,
        titleTextStyle: GoogleFonts.manrope(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColors,
        )),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    textTheme: TextTheme(
      displaySmall: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textColors,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textColors,
      ),
      // This is the display for normal words, the body (body1)
      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textColors,
      ),
      // This is the text theme for sub headings (subtitle 1)
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: buttonTextColor,
      ),
      // This is the tect theme for buttons text (buttons)
      bodySmall: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textFieldHintTextColor,
      ), // This is the text theme for text field hint texts (caption)
    ), // This is the Display for headings (headline 3
  );
}
