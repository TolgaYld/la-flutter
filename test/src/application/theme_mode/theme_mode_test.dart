import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/application/theme_mode/theme_mode.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/get_theme_mode.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/get_use_system_theme.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/set_theme_mode.dart';
import 'package:locall_app/src/domain/usecases/theme_mode/set_use_system_theme.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'theme_mode_test.mocks.dart';

@GenerateMocks([
  GetThemeModeUsecase,
  GetUseSystemThemeUsecase,
  SetThemeModeUsecase,
  SetUseSystemThemeUsecase,
])
void main() {
  late GetThemeModeUsecase getThemeModeUsecase;
  late GetUseSystemThemeUsecase getUseSystemThemeUsecase;
  late MockSetThemeModeUsecase setThemeModeUsecase;
  late MockSetUseSystemThemeUsecase setUseSystemThemeUsecase;
  late ThemeModeServiceProviderImpl themeModeServiceProviderImpl;

  setUp(() {
    getThemeModeUsecase = MockGetThemeModeUsecase();
    getUseSystemThemeUsecase = MockGetUseSystemThemeUsecase();
    setThemeModeUsecase = MockSetThemeModeUsecase();
    setUseSystemThemeUsecase = MockSetUseSystemThemeUsecase();
    themeModeServiceProviderImpl = ThemeModeServiceProviderImpl(
      getThemeModeUsecase: getThemeModeUsecase,
      getUseSystemThemeUsecase: getUseSystemThemeUsecase,
      setThemeModeUsecase: setThemeModeUsecase,
      setUseSystemThemeUsecase: setUseSystemThemeUsecase,
    );
  });

  group('init', () {
    test(
      'should call [GetUseSystemThemeUsecase, SetUseSystemThemeUsecase, '
      'GetThemeModeUsecase, SetThemeModeUsecase]',
      () async {
        when(getUseSystemThemeUsecase()).thenAnswer(
          (_) async => const Right(
            false,
          ),
        );

        when(setUseSystemThemeUsecase(any)).thenAnswer(
          (_) async => const Right(
            null,
          ),
        );

        when(getThemeModeUsecase()).thenAnswer(
          (_) async => const Right(
            true,
          ),
        );

        when(setThemeModeUsecase(any)).thenAnswer(
          (_) async => const Right(
            null,
          ),
        );
        await themeModeServiceProviderImpl.init();

        verify(getUseSystemThemeUsecase()).called(1);
        verifyNoMoreInteractions(getUseSystemThemeUsecase);
        verify(setUseSystemThemeUsecase(false)).called(1);
        verifyNoMoreInteractions(setUseSystemThemeUsecase);
        verify(getThemeModeUsecase()).called(1);
        verifyNoMoreInteractions(getThemeModeUsecase);
        verify(setThemeModeUsecase(true)).called(1);
        verifyNoMoreInteractions(setThemeModeUsecase);
      },
    );

    test(
      'should call [setUseSystemThemeUsecase] and return false when caching was'
      ' unsuccessful',
      () async {
        when(setUseSystemThemeUsecase(any)).thenAnswer(
          (_) async => Left(
            CacheFailure(
              message: "Can't cache theme mode",
            ),
          ),
        );

        final result = await themeModeServiceProviderImpl.setUseSystemTheme(
          systemTheme: true,
        );

        expect(result, false);
        verify(setUseSystemThemeUsecase(true)).called(1);
        verifyNoMoreInteractions(setUseSystemThemeUsecase);
      },
    );
  });

  group('setTheme', () {
    test(
      'should call [setThemeModeUsecase] and return true when caching was '
      'successful',
      () async {
        when(setThemeModeUsecase(any)).thenAnswer(
          (_) async => const Right(
            null,
          ),
        );

        final result = await themeModeServiceProviderImpl.setTheme(mode: true);

        expect(result, true);
        verify(setThemeModeUsecase(true)).called(1);
        verifyNoMoreInteractions(setThemeModeUsecase);
      },
    );

    test(
      'should call [setThemeModeUsecase] and return false when caching was '
      'unsuccessful',
      () async {
        when(setThemeModeUsecase(any)).thenAnswer(
          (_) async => Left(
            CacheFailure(
              message: "Can't cache theme mode",
            ),
          ),
        );

        final result = await themeModeServiceProviderImpl.setTheme(mode: true);

        expect(result, false);
        verify(setThemeModeUsecase(true)).called(1);
        verifyNoMoreInteractions(setThemeModeUsecase);
      },
    );
  });

  group('setTheme', () {
    test(
      'should call [setThemeModeUsecase] and return true when caching was '
      'successful',
      () async {
        when(setThemeModeUsecase(any)).thenAnswer(
          (_) async => const Right(
            null,
          ),
        );

        final result = await themeModeServiceProviderImpl.setTheme(mode: true);

        expect(result, true);
        verify(setThemeModeUsecase(true)).called(1);
        verifyNoMoreInteractions(setThemeModeUsecase);
      },
    );

    test(
      'should call [setThemeModeUsecase] and return false when caching was '
      'unsuccessful',
      () async {
        when(setThemeModeUsecase(any)).thenAnswer(
          (_) async => Left(
            CacheFailure(
              message: "Can't cache theme mode",
            ),
          ),
        );

        final result = await themeModeServiceProviderImpl.setTheme(mode: true);

        expect(result, false);
        verify(setThemeModeUsecase(true)).called(1);
        verifyNoMoreInteractions(setThemeModeUsecase);
      },
    );
  });

  group('toggleTheme', () {
    test(
      'should call [setTheme()]',
      () async {
        when(setThemeModeUsecase(any)).thenAnswer(
          (_) async => const Right(
            null,
          ),
        );

        await themeModeServiceProviderImpl.toggleTheme();

        verify(setThemeModeUsecase(any)).called(1);
        verifyNoMoreInteractions(setThemeModeUsecase);
      },
    );
  });

  group('setUseSystemTheme', () {
    test(
      'should call [setUseSystemThemeUsecase] and return true when caching was '
      'successful',
      () async {
        when(setUseSystemThemeUsecase(any)).thenAnswer(
          (_) async => const Right(
            null,
          ),
        );

        final result = await themeModeServiceProviderImpl.setUseSystemTheme(
          systemTheme: true,
        );

        expect(result, true);
        verify(setUseSystemThemeUsecase(true)).called(1);
        verifyNoMoreInteractions(setUseSystemThemeUsecase);
      },
    );

    test(
      'should call [setUseSystemThemeUsecase] and return false when caching was'
      ' unsuccessful',
      () async {
        when(setUseSystemThemeUsecase(any)).thenAnswer(
          (_) async => Left(
            CacheFailure(
              message: "Can't cache theme mode",
            ),
          ),
        );

        final result = await themeModeServiceProviderImpl.setUseSystemTheme(
          systemTheme: true,
        );

        expect(result, false);
        verify(setUseSystemThemeUsecase(true)).called(1);
        verifyNoMoreInteractions(setUseSystemThemeUsecase);
      },
    );
  });

  group('toggleUseSystemTheme', () {
    test(
      'should call [setUseSystemTheme()]',
      () async {
        when(setUseSystemThemeUsecase(any)).thenAnswer(
          (_) async => const Right(
            null,
          ),
        );

        await themeModeServiceProviderImpl.toggleUseSystemTheme();

        verify(setUseSystemThemeUsecase(any)).called(1);
        verifyNoMoreInteractions(setUseSystemThemeUsecase);
      },
    );
  });
}
