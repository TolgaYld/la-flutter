import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/domain/usecases/auth/forgot_password_usecase.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_usecase_test.mocks.dart';

void main() {
  late MockAuthRepo repo;
  late ForgotPasswordUsecase usecase;

  setUp(() {
    repo = MockAuthRepo();
    usecase = ForgotPasswordUsecase(repo);
  });
  group('ForgotPasswordUsecase', () {
    const tEmail = 'test123@test.com';
    final tFailure =
        ServerFailure(message: "Couldn't Update User", statusCode: 400);
    test('should call [AuthRepo] and send [User] an Reset-Password-Email',
        () async {
      when(
        repo.forgotPassword(
          any,
        ),
      ).thenAnswer((_) async => const Right(null));

      final result = await usecase(tEmail);

      expect(result, const Right<dynamic, void>(null));
      verify(
        repo.forgotPassword(
          tEmail,
        ),
      ).called(1);
      verifyNoMoreInteractions(repo);
    });

    test('should call [AuthRepo] and return a [ServerFailure]', () async {
      when(
        repo.forgotPassword(
          any,
        ),
      ).thenAnswer((_) async => Left(tFailure));

      final result = await usecase(tEmail);

      expect(result, Left<Failure, dynamic>(tFailure));
      verify(
        repo.forgotPassword(
          tEmail,
        ),
      ).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
