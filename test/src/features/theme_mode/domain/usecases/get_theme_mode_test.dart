import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/src/features/theme_mode/domain/repositories/theme_mode_repo.dart';
import 'package:locall_app/src/features/theme_mode/domain/usecases/get_theme_mode.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_theme_mode_test.mocks.dart';

@GenerateMocks([ThemeModeRepo])
void main() {
  late ThemeModeRepo repo;
  late GetThemeModeUsecase usecase;

  setUp(() async {
    repo = MockThemeModeRepo();
    usecase = GetThemeModeUsecase(repo);
  });

  group('GetThemeModeUsecase', () {
    test(
        'should return true from [ThemeModeRepo] when ThemeMode is setted to'
        ' Dark-Mode', () async {
      when(repo.getThemeMode()).thenAnswer(
        (_) async => const Right(true),
      );

      final result = await usecase();

      expect(
        result,
        const Right<dynamic, bool>(true),
      );
      verify(repo.getThemeMode()).called(1);
      verifyNoMoreInteractions(repo);
    });

    test(
        'should return false from [ThemeModeRepo] when ThemeMode is setted to'
        ' Light-Mode', () async {
      when(repo.getThemeMode()).thenAnswer(
        (_) async => const Right(false),
      );

      final result = await usecase();

      expect(
        result,
        const Right<dynamic, bool>(false),
      );
      verify(repo.getThemeMode()).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
