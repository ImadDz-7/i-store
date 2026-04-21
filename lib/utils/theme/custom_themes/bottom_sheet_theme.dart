import 'package:flutter/material.dart';

class IBottomSheetTheme {
  IBottomSheetTheme._();

  /// --- Light Theme
  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  /// --- Dark Theme
  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
