import 'package:locall_app/core/common/constants.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeModeLocalDatasrc {
  Future<bool> getCachedThemeData();
  Future<bool> getUseSystemTheme();
  Future<void> cacheThemeData({required bool mode});
  Future<void> cacheUseSystemTheme({required bool useSystemTheme});
}

class ThemeModeLocalDatasrcImpl implements ThemeModeLocalDatasrc {
  ThemeModeLocalDatasrcImpl(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;
  @override
  Future<void> cacheThemeData({required bool mode}) async {
    try {
      await _sharedPreferences.setBool(kCachedThemeMode, mode);
    } catch (e) {
      throw const CacheException(
        message: 'Bool not setted',
      );
    }
  }

  @override
  Future<bool> getCachedThemeData() async {
    try {
      final modeBool = _sharedPreferences.getBool(kCachedThemeMode);

      if (modeBool != null) {
        return await Future.value(modeBool);
      } else {
        throw const CacheException(
          message: "Can't fetch theme mode",
        );
      }
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(
        message: e.toString(),
      );
    }
  }

  @override
  Future<bool> getUseSystemTheme() async {
    try {
      final useSystemTheme = _sharedPreferences.getBool(kCachedUseSystemTheme);

      if (useSystemTheme != null) {
        return await Future.value(useSystemTheme);
      } else {
        throw const CacheException(
          message: "Can't get bool",
        );
      }
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(
        message: e.toString(),
      );
    }
  }

  @override
  Future<void> cacheUseSystemTheme({required bool useSystemTheme}) async {
    try {
      await _sharedPreferences.setBool(kCachedUseSystemTheme, useSystemTheme);
    } catch (e) {
      throw CacheException(
        message: e.toString(),
      );
    }
  }
}
