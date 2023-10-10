import 'package:flutter/material.dart';

import '../../domain/repositories/theme_repository.dart';

abstract class ThemeService extends ChangeNotifier {
  late bool isDarkModeOn;
  late bool useSystemTheme;
  Future<void> toggleTheme();
  Future<void> setTheme({required bool mode});
  Future<void> toggleUseSystemTheme();
  Future<void> setUseSystemTheme({required bool systemTheme});
  Future<void> init();
}

class ThemeServiceImplementation extends ChangeNotifier
    implements ThemeService {
  final ThemeRepository themeRepository;

  ThemeServiceImplementation({required this.themeRepository});

  @override
  late bool useSystemTheme;

  @override
  bool isDarkModeOn = true;

  @override
  Future<void> setTheme({required bool mode}) async {
    isDarkModeOn = mode;
    notifyListeners();
    await themeRepository.setThemeMode(mode: isDarkModeOn);
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
    await themeRepository.setUseSystemTheme(useSystemTheme: useSystemTheme);
  }

  @override
  Future<void> toggleUseSystemTheme() async {
    useSystemTheme = !useSystemTheme;
    await setUseSystemTheme(systemTheme: useSystemTheme);
  }

  @override
  Future<void> init() async {
    final useSystemThemeOrFailure = await themeRepository.getUseSystemTheme();

    await useSystemThemeOrFailure.fold((failure) async {
      await setUseSystemTheme(systemTheme: false);
    }, (useSystemTheme) async {
      await setUseSystemTheme(systemTheme: useSystemTheme);
    });

    final modeOrFailure = await themeRepository.getThemeMode();

    await modeOrFailure.fold((failure) async {
      setTheme(mode: true);
    }, (mode) async {
      await setTheme(mode: mode);
    });
  }
}
