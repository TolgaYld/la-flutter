import 'package:flutter/material.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/get_theme_mode.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/get_use_system_theme.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/set_theme_mode.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/set_use_system_theme.dart';

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
  late bool useSystemTheme;

  @override
  bool isDarkModeOn = true;

  @override
  Future<void> setTheme({required bool mode}) async {
    isDarkModeOn = mode;
    notifyListeners();
    await _setThemeModeUsecase(isDarkModeOn);
  }

  @override
  Future<void> toggleTheme() async {
    isDarkModeOn = !isDarkModeOn;
    await setTheme(mode: isDarkModeOn);
  }

  @override
  Future<void> setUseSystemTheme({required bool systemTheme}) async {
    useSystemTheme = systemTheme;
    notifyListeners();
    await _setUseSystemThemeUsecase(useSystemTheme);
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
