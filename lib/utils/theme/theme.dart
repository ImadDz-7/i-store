import 'package:flutter/material.dart';
import 'package:i_store_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:i_store_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:i_store_app/utils/theme/custom_themes/check_box_theme.dart';
import 'package:i_store_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:i_store_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:i_store_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:i_store_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:i_store_app/utils/theme/custom_themes/text_theme.dart';

class IAppTheme {
  IAppTheme._(); // Private Constructor

  /// --- Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ITextTheme.lightTextTheme,
    elevatedButtonTheme: IElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: ITextFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme: IBottomSheetTheme.lightBottomSheetThemeData,
    checkboxTheme: ICheckBoxTheme.lightCheckBoxTheme,
    appBarTheme: IAppBarTheme.lightAppBarTheme,
    chipTheme: IChipTheme.lightChipTheme,
  );

  /// --- Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ITextTheme.darkTextTheme,
    elevatedButtonTheme: IElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: ITextFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme: IBottomSheetTheme.darkBottomSheetThemeData,
    checkboxTheme: ICheckBoxTheme.darkCheckBoxTheme,
    appBarTheme: IAppBarTheme.darkAppBarTheme,
    chipTheme: IChipTheme.darkChipTheme,
  );
}