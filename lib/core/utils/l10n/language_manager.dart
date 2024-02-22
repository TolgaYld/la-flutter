import 'package:flutter/material.dart';
import 'package:locall_app/core/common/gen/assets.gen.dart';

class LanguageManager {
  const LanguageManager._();
  static List<Locale> get supportedLocales {
    const suffix = 'arb';
    final jsonPaths = Assets.translations.values
        .where((String key) => key.contains('translations/'))
        .where((String key) => key.contains('.$suffix'))
        .toList();

    final mapToLocale = jsonPaths.map((jsonString) {
      const start = 'assets/translations/json_';
      const end = '.$suffix';

      final startIndex = jsonString.indexOf(start);
      final endIndex = jsonString.indexOf(end, startIndex + start.length);
      return Locale(jsonString.substring(startIndex + start.length, endIndex));
    }).toList();

    return mapToLocale;
  }

  static String get rootPath {
    final getString = Assets.translations.jsonEn;
    return getString.substring(0, getString.indexOf('/json_en'));
  }

  static Locale get fallbackLocale {
    const suffix = 'arb';
    final fallBackLocalString = Assets.translations.jsonEn;

    const start = 'assets/translations/json_';
    const end = '.$suffix';

    final startIndex = fallBackLocalString.indexOf(start);
    final endIndex =
        fallBackLocalString.indexOf(end, startIndex + start.length);
    return Locale(
      fallBackLocalString.substring(startIndex + start.length, endIndex),
    );
  }

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
