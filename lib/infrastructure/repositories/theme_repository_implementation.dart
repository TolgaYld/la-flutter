import '../../domain/failures/failures.dart';
import '../../domain/repositories/theme_repository.dart';
import '../datasources/theme_local_datasources.dart';
import '../exceptions/exceptions.dart';
import 'package:dartz/dartz.dart';

class ThemeRepositoryImplementation implements ThemeRepository {
  final ThemeLocalDatasource themeLocalDatasource;

  ThemeRepositoryImplementation({required this.themeLocalDatasource});
  @override
  Future<Either<Failure, bool>> getThemeMode() async {
    try {
      final themeMode = await themeLocalDatasource.getCachedThemeData();
      return Right(themeMode);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<void> setThemeMode({required bool mode}) {
    return themeLocalDatasource.cacheThemeData(mode: mode);
  }

  @override
  Future<Either<Failure, bool>> getUseSystemTheme() async {
    try {
      final themeMode = await themeLocalDatasource.getUseSystemTheme();
      return Right(themeMode);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<void> setUseSystemTheme({required bool useSystemTheme}) {
    return themeLocalDatasource.cacheUseSystemTheme(
        useSystemTheme: useSystemTheme);
  }
}
