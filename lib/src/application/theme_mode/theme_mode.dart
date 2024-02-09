import 'package:flutter/material.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/get_theme_mode.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/get_use_system_theme.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/set_theme_mode.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/set_use_system_theme.dart';

abstract class ThemeModeServiceProvider extends ChangeNotifier {
  late bool isDarkModeOn;
  late bool useSystemTheme;
  Future<void> toggleTheme();
  Future<void> setTheme({required bool mode});
  Future<void> toggleUseSystemTheme();
  Future<void> setUseSystemTheme({required bool systemTheme});
  Future<void> init();
}

class ThemeModeServiceProviderImpl extends ChangeNotifier
    implements ThemeModeServiceProvider {
  ThemeModeServiceProviderImpl({
    required GetThemeModeUsecase getThemeModeUsecase,
    required GetUseSystemThemeUsecase getUseSystemThemeUsecase,
    required SetThemeModeUsecase setThemeModeUsecase,
    required SetUseSystemThemeUsecase setUseSystemThemeUsecase,
  })  : _getThemeModeUsecase = getThemeModeUsecase,
        _getUseSystemThemeUsecase = getUseSystemThemeUsecase,
        _setThemeModeUsecase = setThemeModeUsecase,
        _setUseSystemThemeUsecase = setUseSystemThemeUsecase;

  final GetThemeModeUsecase _getThemeModeUsecase;
  final GetUseSystemThemeUsecase _getUseSystemThemeUsecase;
  final SetThemeModeUsecase _setThemeModeUsecase;
  final SetUseSystemThemeUsecase _setUseSystemThemeUsecase;

  @override
  bool useSystemTheme = false;

  @override
  bool isDarkModeOn = true;

  @override
  Future<bool> setTheme({required bool mode}) async {
    isDarkModeOn = mode;
    notifyListeners();
    final cacheOrFailure = await _setThemeModeUsecase(isDarkModeOn);

    // Returns true if caching was successful and false if it was unsuccessful
    return cacheOrFailure.fold(
      (failure) => false,
      (_) => true,
    );
  }

  @override
  Future<void> toggleTheme() async {
    isDarkModeOn = !isDarkModeOn;
    await setTheme(mode: isDarkModeOn);
  }

  @override
  Future<bool> setUseSystemTheme({required bool systemTheme}) async {
    useSystemTheme = systemTheme;
    notifyListeners();
    final cacheOrFailure = await _setUseSystemThemeUsecase(useSystemTheme);

    return cacheOrFailure.fold(
      (failure) => false,
      (_) => true,
    );
  }

  @override
  Future<void> toggleUseSystemTheme() async {
    useSystemTheme = !useSystemTheme;
    await setUseSystemTheme(systemTheme: useSystemTheme);
  }

  @override
  Future<void> init() async {
    final useSystemThemeOrFailure = await _getUseSystemThemeUsecase();

    await useSystemThemeOrFailure.fold((failure) async {
      await setUseSystemTheme(systemTheme: false);
    }, (useSystemTheme) async {
      await setUseSystemTheme(systemTheme: useSystemTheme);
    });

    final modeOrFailure = await _getThemeModeUsecase();

    await modeOrFailure.fold((failure) async {
      await setTheme(mode: true);
    }, (mode) async {
      await setTheme(mode: mode);
    });
  }
}
