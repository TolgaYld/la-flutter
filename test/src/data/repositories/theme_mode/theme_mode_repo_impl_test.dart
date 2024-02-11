import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/data/datasources/theme_mode/theme_mode_local_datasrc.dart';
import 'package:locall_app/src/data/repositories/theme_mode/theme_mode_repo_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'theme_mode_repo_impl_test.mocks.dart';

@GenerateMocks([ThemeModeLocalDatasrc])
void main() {
  late MockThemeModeLocalDatasrc localDatasrc;
  late ThemeModeRepoImpl repoImpl;

  setUp(() {
    localDatasrc = MockThemeModeLocalDatasrc();
    repoImpl = ThemeModeRepoImpl(localDatasrc);
  });

  group('getThemeMode', () {
    test('should return bool when [ThemeModeLocalDatasrc] is called', () async {
      when(localDatasrc.getCachedThemeData()).thenAnswer(
        (_) async => true,
      );

      final result = await repoImpl.getThemeMode();

      expect(result, const Right<dynamic, bool>(true));

      verify(localDatasrc.getCachedThemeData()).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });

    test('should return [CacheFailure] when [ThemeModeLocalDatasrc] is called',
        () async {
      when(localDatasrc.getCachedThemeData()).thenThrow(
        const CacheException(
          message: "Can't fetch bool",
        ),
      );

      final result = await repoImpl.getThemeMode();

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure(
            message: "Can't fetch bool",
          ),
        ),
      );

      verify(localDatasrc.getCachedThemeData()).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });
  });

  group('getUseSystemTheme', () {
    test('should return bool when [ThemeModeLocalDatasrc] is called', () async {
      when(localDatasrc.getUseSystemTheme()).thenAnswer(
        (_) async => true,
      );

      final result = await repoImpl.getUseSystemTheme();

      expect(result, const Right<dynamic, bool>(true));

      verify(localDatasrc.getUseSystemTheme()).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });

    test('should return [CacheFailure] when [ThemeModeLocalDatasrc] is called',
        () async {
      when(localDatasrc.getUseSystemTheme()).thenThrow(
        const CacheException(
          message: "Can't fetch bool",
        ),
      );

      final result = await repoImpl.getUseSystemTheme();

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure(
            message: "Can't fetch bool",
          ),
        ),
      );

      verify(localDatasrc.getUseSystemTheme()).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });
  });

  group('setThemeMode', () {
    test('should set/cache theme mode when [ThemeModeLocalDatasrc] is called',
        () async {
      when(localDatasrc.cacheThemeData(mode: anyNamed('mode'))).thenAnswer(
        (_) async => Future.value(),
      );

      final result = await repoImpl.setThemeMode(mode: true);

      expect(result, const Right<dynamic, void>(null));

      verify(localDatasrc.cacheThemeData(mode: true)).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });

    test('should return [CacheFailure] when [ThemeModeLocalDatasrc] is called',
        () async {
      when(localDatasrc.cacheThemeData(mode: anyNamed('mode'))).thenThrow(
        const CacheException(
          message: "Can't cache bool",
        ),
      );

      final result = await repoImpl.setThemeMode(mode: false);

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure(
            message: "Can't cache bool",
          ),
        ),
      );

      verify(localDatasrc.cacheThemeData(mode: false)).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });
  });

  group('setUseSystemTheme', () {
    test('should set/cache theme mode when [ThemeModeLocalDatasrc] is called',
        () async {
      when(
        localDatasrc.cacheUseSystemTheme(
          useSystemTheme: anyNamed(
            'useSystemTheme',
          ),
        ),
      ).thenAnswer(
        (_) async => Future.value(),
      );

      final result = await repoImpl.setUseSystemTheme(useSystemTheme: false);

      expect(result, const Right<dynamic, void>(null));

      verify(
        localDatasrc.cacheUseSystemTheme(useSystemTheme: false),
      ).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });

    test('should return [CacheFailure] when [ThemeModeLocalDatasrc] is called',
        () async {
      when(
        localDatasrc.cacheUseSystemTheme(
          useSystemTheme: anyNamed(
            'useSystemTheme',
          ),
        ),
      ).thenThrow(
        const CacheException(
          message: "Can't cache bool",
        ),
      );

      final result = await repoImpl.setUseSystemTheme(useSystemTheme: false);

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure(
            message: "Can't cache bool",
          ),
        ),
      );

      verify(
        localDatasrc.cacheUseSystemTheme(useSystemTheme: false),
      ).called(1);
      verifyNoMoreInteractions(localDatasrc);
    });
  });
}
