import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/domain/usecases/auth/check_email_exists_usecase.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_usecase_test.mocks.dart';

void main() {
  late MockAuthRepo repo;
  late CheckEmailExistsUsecase usecase;

  setUp(() {
    repo = MockAuthRepo();
    usecase = CheckEmailExistsUsecase(repo);
  });

  group('CheckEmailExistsUsecase', () {
    test('should return a bool when call to [AuthRepo] is successful',
        () async {
      when(repo.checkIfEmailExists(any))
          .thenAnswer((_) async => const Right(true));

      final result = await usecase('test123@test.com');

      expect(result, const Right<dynamic, bool>(true));

      verify(repo.checkIfEmailExists('test123@test.com')).called(1);
      verifyNoMoreInteractions(repo);
    });

    test('should return a [ApiFailure] when call to [AuthRepo] is unsuccessful',
        () async {
      const tFailure = ApiFailure(
        message: "Couldn't check if email exists",
      );
      when(repo.checkIfEmailExists(any))
          .thenAnswer((_) async => const Left(tFailure));

      final result = await usecase('test123@test.com');

      expect(result, const Left<Failure, dynamic>(tFailure));

      verify(repo.checkIfEmailExists('test123@test.com')).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
