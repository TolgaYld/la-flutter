import 'package:locall_app/core/utils/typedefs.dart';

abstract class ThemeModeRepo {
  ResultFuture<bool> getThemeMode();

  ResultFuture<void> setThemeMode({required bool mode});

  ResultFuture<bool> getUseSystemTheme();

  ResultFuture<void> setUseSystemTheme({required bool useSystemTheme});
}
