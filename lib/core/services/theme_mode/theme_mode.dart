import 'package:get_it/get_it.dart';
import 'package:locall_app/src/features/theme_mode/application/theme_mode.dart';
import 'package:locall_app/src/features/theme_mode/data/datasources/theme_mode_local_datasrc.dart';
import 'package:locall_app/src/features/theme_mode/data/repositories/theme_mode_repo_impl.dart';
import 'package:locall_app/src/features/theme_mode/domain/repositories/theme_mode_repo.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/get_theme_mode.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/get_use_system_theme.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/set_theme_mode.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/set_use_system_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> initThemeMode(GetIt sl) async {
  final prefs = await SharedPreferences.getInstance();
  // Provider
  sl
    ..registerLazySingleton<ThemeModeServiceProvider>(
      () => ThemeModeServiceProviderImpl(
        getThemeModeUsecase: sl(),
        getUseSystemThemeUsecase: sl(),
        setThemeModeUsecase: sl(),
        setUseSystemThemeUsecase: sl(),
      ),
    )

    // Usecases
    ..registerLazySingleton(() => GetThemeModeUsecase(sl()))
    ..registerLazySingleton(() => GetUseSystemThemeUsecase(sl()))
    ..registerLazySingleton(() => SetUseSystemThemeUsecase(sl()))
    ..registerLazySingleton(() => SetThemeModeUsecase(sl()))

    // Repo
    ..registerLazySingleton<ThemeModeRepo>(() => ThemeModeRepoImpl(sl()))

    // Datasrc
    ..registerLazySingleton<ThemeModeLocalDatasrc>(
      () => ThemeModeLocalDatasrcImplementation(prefs),
    );
}
