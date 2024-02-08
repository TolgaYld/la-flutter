import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/set_use_system_theme.dart';
import 'package:mockito/mockito.dart';

import 'get_theme_mode_test.mocks.dart';

void main() {
  late MockThemeModeRepo repo;
  late SetUseSystemThemeUsecase usecase;

  setUp(() async {
    repo = MockThemeModeRepo();
    usecase = SetUseSystemThemeUsecase(repo);
  });

  group('SetUseSystemThemeUsecase', () {
    test('should call [ThemeModeRepo] when ThemeMode on System will be used',
        () async {
      when(
        repo.setUseSystemTheme(
          useSystemTheme: anyNamed('useSystemTheme'),
        ),
      ).thenAnswer(
        (_) async => const Right(null),
      );

      final result = await usecase(true);

      expect(
        result,
        const Right<dynamic, void>(null),
      );
      verify(repo.setUseSystemTheme(useSystemTheme: true)).called(1);
      verifyNoMoreInteractions(repo);
    });

    test(
        'should call [ThemeModeRepo] when ThemeMode on System will be not be '
        'used', () async {
      when(
        repo.setUseSystemTheme(
          useSystemTheme: anyNamed('useSystemTheme'),
        ),
      ).thenAnswer(
        (_) async => const Right(null),
      );

      final result = await usecase(false);

      expect(
        result,
        const Right<dynamic, void>(null),
      );
      verify(
        repo.setUseSystemTheme(
          useSystemTheme: false,
        ),
      ).called(1);
      verifyNoMoreInteractions(repo);
    });

    test(
        'should return [CacheFailure] when call to '
        '[ThemeModeRepo] was unsuccessful', () async {
      when(repo.setUseSystemTheme(useSystemTheme: anyNamed('useSystemTheme')))
          .thenAnswer(
        (_) async => Left(
          CacheFailure(
            message: "Can't set bool",
          ),
        ),
      );

      final result = await usecase(true);

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure(
            message: "Can't set bool",
          ),
        ),
      );
      verify(repo.setUseSystemTheme(useSystemTheme: true)).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
