import 'package:e_commerce_app/utils/theme/custom_Theme/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_Theme/bottton_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_Theme/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_Theme/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_Theme/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_Theme/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_Theme/text_field_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_Theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._(); // Constructor Private Do need to use again and again

  // ----------------Creating variable of theme data------------------------
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lighChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomTheme.lightBottonSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormField.lightInputDecoration,
  );
  // ----------------------Creating variable of theme data-----------------
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomTheme.darkBottonSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormField.darkInputDecoration,
  );
}