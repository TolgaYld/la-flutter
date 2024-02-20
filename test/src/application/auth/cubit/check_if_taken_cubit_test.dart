import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/application/auth/cubit/check_if_taken_cubit.dart';
import 'package:locall_app/src/domain/usecases/auth/check_email_exists_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/check_username_exists_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'check_if_taken_cubit_test.mocks.dart';

@GenerateMocks([CheckEmailExistsUsecase, CheckUsernameExistsUsecase])
void main() {
  late MockCheckEmailExistsUsecase checkEmailExistsUsecase;
  late MockCheckUsernameExistsUsecase checkUsernameExistsUsecase;
  late CheckIfTakenCubit cubit;

  setUp(() {
    checkEmailExistsUsecase = MockCheckEmailExistsUsecase();
    checkUsernameExistsUsecase = MockCheckUsernameExistsUsecase();

    cubit = CheckIfTakenCubit(
      checkEmailExistsUsecase: checkEmailExistsUsecase,
      checkUsernameExistsUsecase: checkUsernameExistsUsecase,
    );
  });

  tearDown(() => cubit.close());

  group('checkEmailIsTakenHandler', () {
    const tState = CheckIfTakenState.check(
      isEmailTaken: false,
      isUsernameTaken: false,
      hasFailure: false,
    );
    const tFailure = ApiFailure(message: 'Check E-Mail Exists Failed');
    blocTest<CheckIfTakenCubit, CheckIfTakenState>(
      'emits [CheckIfTakenState.check(isEmailTaken: false, hasFailure: false)] '
      'when checkEmailIsTakenHandler is called.',
      build: () {
        when(checkEmailExistsUsecase(any))
            .thenAnswer((_) async => const Right(false));
        return cubit;
      },
      act: (cubit) => cubit.checkEmailIsTakenHandler('test123@test.com'),
      expect: () => [
        tState.copyWith(isEmailTaken: false, hasFailure: false),
      ],
      verify: (_) {
        verify(checkEmailExistsUsecase('test123@test.com'));
        verifyNoMoreInteractions(checkEmailExistsUsecase);
      },
    );

    blocTest<CheckIfTakenCubit, CheckIfTakenState>(
      'emits [CheckIfTakenState.check(isEmailTaken: false, hasFailure: true)] '
      'when checkEmailIsTakenHandler is called.',
      build: () {
        when(checkEmailExistsUsecase(any))
            .thenAnswer((_) async => const Left(tFailure));
        return cubit;
      },
      act: (cubit) => cubit.checkEmailIsTakenHandler('test123@test.com'),
      expect: () => [
        tState.copyWith(isEmailTaken: false, hasFailure: true),
      ],
      verify: (_) {
        verify(checkEmailExistsUsecase('test123@test.com'));
        verifyNoMoreInteractions(checkEmailExistsUsecase);
      },
    );
  });

  group('checkUsernameIsTakenHandler', () {
    const tState = CheckIfTakenState.check(
      isEmailTaken: false,
      isUsernameTaken: false,
      hasFailure: false,
    );
    const tFailure = ApiFailure(message: 'Check Username Exists Failed');
    blocTest<CheckIfTakenCubit, CheckIfTakenState>(
      'emits [CheckIfTakenState.check(isUsernameTaken: false, '
      'hasFailure: false)] when checkUsernameIsTakenHandler is called.',
      build: () {
        when(checkUsernameExistsUsecase(any))
            .thenAnswer((_) async => const Right(false));
        return cubit;
      },
      act: (cubit) => cubit.checkUsernameIsTakenHandler('empty'),
      expect: () => [
        tState.copyWith(isUsernameTaken: false, hasFailure: false),
      ],
      verify: (_) {
        verify(checkUsernameExistsUsecase('empty'));
        verifyNoMoreInteractions(checkUsernameExistsUsecase);
      },
    );

    blocTest<CheckIfTakenCubit, CheckIfTakenState>(
      'emits [CheckIfTakenState.check(isUsernameTaken: false, '
      'hasFailure: true)] when checkUsernameIsTakenHandler is called.',
      build: () {
        when(checkUsernameExistsUsecase(any))
            .thenAnswer((_) async => const Left(tFailure));
        return cubit;
      },
      act: (cubit) => cubit.checkUsernameIsTakenHandler('empty'),
      expect: () => [
        tState.copyWith(isUsernameTaken: false, hasFailure: true),
      ],
      verify: (_) {
        verify(checkUsernameExistsUsecase('empty'));
        verifyNoMoreInteractions(checkUsernameExistsUsecase);
      },
    );
  });
}
