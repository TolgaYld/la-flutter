import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/domain/usecases/auth/update_password_usecase.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_usecase_test.mocks.dart';

void main() {
  late MockAuthRepo repo;
  late UpdatePasswordUsecase usecase;

  setUp(() {
    repo = MockAuthRepo();
    usecase = UpdatePasswordUsecase(repo);
  });
  group('UpdatePasswordUsecase', () {
    const tParams = UpdatePasswordParams.empty();
    final tFailure =
        ApiFailure(message: "Couldn't Update Password", statusCode: 400);
    test('should call [AuthRepo] and  update [User]-password', () async {
      when(
        repo.updatePassword(
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
        ),
      ).thenAnswer((_) async => const Right(null));

      final result = await usecase(tParams);

      expect(result, const Right<dynamic, void>(null));
      verify(
        repo.updatePassword(
          password: tParams.password,
          repeatPassword: tParams.repeatPassword,
        ),
      ).called(1);
      verifyNoMoreInteractions(repo);
    });

    test('should call [AuthRepo] and return a [ApiFailure]', () async {
      when(
        repo.updatePassword(
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
        ),
      ).thenAnswer((_) async => Left(tFailure));

      final result = await usecase(tParams);

      expect(result, Left<Failure, dynamic>(tFailure));
      verify(
        repo.updatePassword(
          password: tParams.password,
          repeatPassword: tParams.repeatPassword,
        ),
      ).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
