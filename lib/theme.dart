import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = Color(0xffffffff);
  static const Color _lightPrimaryVariantColor = Color(0xff143d59);
  static const Color _lightOnPrimaryColor = Color(0xfff4b41a);
  static const Color _lightTextColorPrimary = _lightOnPrimaryColor;
  static const Color _appbarColorLight = Color(0xff191641);

  static final Color _darkPrimaryColor = Colors.grey[850]!;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkOnPrimaryColor = Color(0xfff2c335);
  static const Color _darkTextColorPrimary = Color(0xfff2c335);
  static final Color _appbarColorDark = Colors.grey[850]!;

  static const Color _iconColor = Colors.white;

  static const Color _accentColorDark = Color.fromRGBO(253, 166, 41, 1);

  static const TextStyle _lightHeadingText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Josefin',
    fontSize: 21,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _lightBodyText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Yeseva',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  static final TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    bodyLarge: _lightBodyText,
    labelLarge: _lightBodyText,
    bodyMedium: _lightBodyText.copyWith(fontSize: 14),
    labelMedium: _lightBodyText.copyWith(fontSize: 14),
    bodySmall: _lightBodyText.copyWith(fontSize: 12),
    labelSmall: _lightBodyText.copyWith(fontSize: 12),
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

  static final ElevatedButtonThemeData _elevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: _lightOnPrimaryColor,
    ),
  );

  static final TextButtonThemeData _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: _lightBodyText,
      splashFactory: NoSplash.splashFactory,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    elevatedButtonTheme: _elevatedButtonTheme,
    textButtonTheme: _textButtonTheme,
    primaryTextTheme: _lightTextTheme,
    fontFamily: 'Yeseva',
    useMaterial3: true,
    inputDecorationTheme: _inputDecorationTheme,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: _lightTextColorPrimary),
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: _lightOnPrimaryColor,
      iconTheme: IconThemeData(color: _iconColor),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: _appbarColorLight),
    colorScheme: const ColorScheme.light(
      background: _lightOnPrimaryColor,
      outline: _lightPrimaryVariantColor,
      onBackground: _lightOnPrimaryColor,
      onSecondary: _lightOnPrimaryColor,
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _lightPrimaryVariantColor,
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
