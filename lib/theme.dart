import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = Color(0xfff2c335);
  static const Color _lightPrimaryVariantColor =  Color(0xff6f3df4);
  static const Color _lightOnPrimaryColor = Color(0xfffafafa);
  static const Color _lightTextColorPrimary = _lightPrimaryColor;
  static const Color _appbarColorLight = Color(0xff191641);

  static final Color _darkPrimaryColor = Colors.grey[850]!;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkOnPrimaryColor = Color(0xfff2c335);
  static const Color _darkTextColorPrimary = Color(0xfff2c335);
  static final Color _appbarColorDark = Colors.grey[850]!;

  static const Color _iconColor = Colors.white;

  static const Color _accentColorDark = Color.fromRGBO(253, 166, 41, 1.0);

  static const TextStyle _lightHeadingText = TextStyle(
    
    color: _lightTextColorPrimary,
    fontFamily: "Josefin",
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _lightBodyText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: "Yeseva",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    bodyLarge: _lightBodyText,
  );

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextStyle _darkThemeBodyeTextStyle = _lightBodyText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkThemeHeadingTextStyle,
    bodyLarge: _darkThemeBodyeTextStyle,
  );

  

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    floatingLabelStyle: const TextStyle(color: _lightTextColorPrimary),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(9),
      borderSide: const BorderSide(color: _lightTextColorPrimary),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(9),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    fontFamily: "Yeseva",
    useMaterial3: true,
    inputDecorationTheme: _inputDecorationTheme,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: _lightTextColorPrimary),
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: _appbarColorLight,
      iconTheme: IconThemeData(color: _iconColor),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: _appbarColorLight),
    colorScheme: const ColorScheme.light(
      background: _lightOnPrimaryColor,
      onBackground: _lightPrimaryColor,
      onSecondary: _lightOnPrimaryColor,
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _appbarColorLight,
      primaryContainer: _lightPrimaryVariantColor,
    ),
    textTheme: _lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: _inputDecorationTheme,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: _darkTextColorPrimary),
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appbarColorDark,
      iconTheme: const IconThemeData(color: _iconColor),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: _appbarColorDark),
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      secondary: _accentColorDark,
      onPrimary: _darkOnPrimaryColor,
      primaryContainer: _darkPrimaryVariantColor,
    ),
    textTheme: _darkTextTheme,
  );
}
