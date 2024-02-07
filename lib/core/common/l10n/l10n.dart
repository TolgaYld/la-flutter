import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('es'),
    const Locale('de'),
    const Locale('tr'),
  ];
  static String getFlag(String code) {
    switch (code) {
      case 'es':
        return '🇪🇸';
      case 'de':
        return '🇩🇪';
      case 'tr':
        return '🇹🇷';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
