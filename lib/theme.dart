import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = Color.fromRGBO(146, 180, 236, 1.0);
  static const Color _lightPrimaryVariantColor = Colors.red;
  static const Color _lightOnPrimaryColor = Colors.white;
  static const Color _lightTextColorPrimary = Colors.white;
  static const Color _appbarColorLight = Color.fromRGBO(146, 180, 236, 1.0);

  static final Color _darkPrimaryColor = Colors.grey[850]!;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkOnPrimaryColor = Color.fromRGBO(112, 184, 73, 1.0);
  static const Color _darkTextColorPrimary = Color.fromRGBO(112, 184, 73, 1.0);
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
    headline1: _lightHeadingText,
    bodyText1: _lightBodyText,
  );

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextStyle _darkThemeBodyeTextStyle = _lightBodyText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkThemeHeadingTextStyle,
    bodyText1: _darkThemeBodyeTextStyle,
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
    bottomAppBarColor: _appbarColorLight,
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _accentColorDark,
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
    bottomAppBarColor: _appbarColorDark,
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      secondary: _accentColorDark,
      onPrimary: _darkOnPrimaryColor,
      primaryContainer: _darkPrimaryVariantColor,
    ),
    textTheme: _darkTextTheme,
  );
}
