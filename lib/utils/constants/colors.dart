import 'package:flutter/material.dart';


class TColors{
  TColors._();
  // App Basic Colors
  static const Color primary = Color(0xFF4868FF);
  static const Color secondary = Color(0xFFFFE248);
  static const Color accent = Color(0xffb0c7ff);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ],
  );

  // Text Colors
  static Color textPrimary = const Color(0xff333333);
  static Color textSecondary = const Color(0xFF6C757D);
  static Color textWhite = Colors.white;

  // Background Colors
  static const Color  light =  Color(0xFFF6F6F6);
  static const Color dark =  Color(0xFF272727);
  static const Color primaryBackground =  Color(0xFFF3F5FF);


  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static  Color darkContainer = TColors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary =  Color(0xFFD9D9D9);
  static const Color borderSecondary =  Color(0xFFE6E6E6);

  // Error and Validation Colors
  static Color error = const Color(0xFFD32F2F);
  static Color success = const Color(0xFF388E3C);
  static Color warning = const Color(0xFFF57C00);
  static Color info = const Color(0xFF1976D2);



  // Neutral Shades
  static Color black = const Color(0xFF232323);
  static Color darkerGrey = const Color(0xFF4F4F4F);
  static Color darkGrey = const Color(0xFF939393);
  static Color grey = const Color(0xFFE0E0E0);
  static Color softgrey = const Color(0xFFF4F4F4);
  static Color lightgrey = const Color(0xFFF9F9F9);
  static Color white = const Color(0xFFFFFFFF);

}