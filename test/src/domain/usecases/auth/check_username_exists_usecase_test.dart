import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/domain/usecases/auth/check_username_exists_usecase.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_usecase_test.mocks.dart';

void main() {
  late MockAuthRepo repo;
  late CheckUsernameExistsUsecase usecase;

  setUp(() {
    repo = MockAuthRepo();
    usecase = CheckUsernameExistsUsecase(repo);
  });

  group('CheckUsernameExistsUsecase', () {
    test('should return a bool when call to [AuthRepo] is successful',
        () async {
      when(repo.checkIfUsernameExists(any))
          .thenAnswer((_) async => const Right(false));

      final result = await usecase('testusername');

      expect(result, const Right<dynamic, bool>(false));

      verify(repo.checkIfUsernameExists('testusername')).called(1);
      verifyNoMoreInteractions(repo);
    });

    test('should return a [ApiFailure] when call to [AuthRepo] is unsuccessful',
        () async {
      const tFailure = ApiFailure(
        message: "Couldn't check if username exists",
      );
      when(repo.checkIfUsernameExists(any))
          .thenAnswer((_) async => const Left(tFailure));

      final result = await usecase('testusername');

      expect(result, const Left<Failure, dynamic>(tFailure));

      verify(repo.checkIfUsernameExists('testusername')).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
