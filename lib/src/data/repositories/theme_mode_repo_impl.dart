import 'package:dartz/dartz.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/datasources/theme_mode_local_datasrc.dart';
import 'package:locall_app/src/domain/repositories/theme_mode/theme_mode_repo.dart';

class ThemeModeRepoImpl implements ThemeModeRepo {
  const ThemeModeRepoImpl(this._themeModeLocalDatasrc);
  final ThemeModeLocalDatasrc _themeModeLocalDatasrc;
  @override
  ResultFuture<bool> getThemeMode() async {
    try {
      final themeMode = await _themeModeLocalDatasrc.getCachedThemeData();
      return Right(themeMode);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }

  @override
  ResultFuture<bool> getUseSystemTheme() async {
    try {
      final useSystemTheme = await _themeModeLocalDatasrc.getUseSystemTheme();
      return Right(useSystemTheme);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> setThemeMode({required bool mode}) async {
    try {
      await _themeModeLocalDatasrc.cacheThemeData(mode: mode);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> setUseSystemTheme({required bool useSystemTheme}) async {
    try {
      await _themeModeLocalDatasrc.cacheUseSystemTheme(
        useSystemTheme: useSystemTheme,
      );
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }
}
