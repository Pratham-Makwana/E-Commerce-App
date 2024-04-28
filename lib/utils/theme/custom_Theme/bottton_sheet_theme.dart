import 'package:flutter/material.dart';

class TBottomTheme {
  TBottomTheme._();

  static BottomSheetThemeData lightBottonSheetTheme = BottomSheetThemeData(
    showDragHandle: true, // center dot
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );


  static BottomSheetThemeData darkBottonSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

}