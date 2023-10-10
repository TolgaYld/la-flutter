import '../exceptions/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHED_THEME_MODE = 'CACHED_THEME_MODE';

const CACHED_USE_SYSTEM_THEME = 'CHACHED_USE_SYSTEM_THEME';

abstract class ThemeLocalDatasource {
  Future<bool> getCachedThemeData();
  Future<bool> getUseSystemTheme();
  Future<void> cacheThemeData({required bool mode});
  Future<void> cacheUseSystemTheme({required bool useSystemTheme});
}

class ThemeLocalDatasourceImplementation implements ThemeLocalDatasource {
  final SharedPreferences sharedPreferences;
  ThemeLocalDatasourceImplementation({required this.sharedPreferences});

  @override
  Future<void> cacheThemeData({required bool mode}) {
    return sharedPreferences.setBool(CACHED_THEME_MODE, mode);
  }

  @override
  Future<bool> getCachedThemeData() async {
    final modeBool = sharedPreferences.getBool(CACHED_THEME_MODE);

    if (modeBool != null) {
      return await Future.value(modeBool);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<bool> getUseSystemTheme() async {
    final useSystemTheme = sharedPreferences.getBool(CACHED_USE_SYSTEM_THEME);

    if (useSystemTheme != null) {
      return await Future.value(useSystemTheme);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheUseSystemTheme({required bool useSystemTheme}) {
    return sharedPreferences.setBool(CACHED_USE_SYSTEM_THEME, useSystemTheme);
  }
}
