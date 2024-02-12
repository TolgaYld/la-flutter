import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';
import 'package:locall_app/src/domain/usecases/auth/sign_up_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_usecase_test.mocks.dart';

@GenerateMocks([AuthRepo])
void main() {
  late MockAuthRepo repo;
  late SignUpUsecase usecase;

  setUp(() {
    repo = MockAuthRepo();
    usecase = SignUpUsecase(repo);
  });

  group('SignUpUsecase', () {
    final tUser = User.empty();

    test('should call the [AuthRepo] and return a [User]', () async {
      when(
        repo.signUp(
          username: anyNamed('username'),
          email: anyNamed('email'),
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenAnswer(
        (_) async => Right(tUser),
      );

      final result = await usecase(
        SignUpParams(
          email: tUser.email,
          password: 'empty',
          username: tUser.username,
          coordinates: tUser.coordinates,
          repeatPassword: 'aaaaaaaaaaaa',
        ),
      );

      expect(result, Right<dynamic, User>(tUser));

      verify(
        repo.signUp(
          username: tUser.username,
          email: tUser.email,
          password: 'empty',
          coordinates: tUser.coordinates,
          repeatPassword: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verifyNoMoreInteractions(repo);
    });

    test('should call the [AuthRepo] and return a [Failure]', () async {
      when(
        repo.signUp(
          username: anyNamed('username'),
          email: anyNamed('email'),
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenAnswer(
        (_) async => Left(
          ApiFailure(
            message: "Couldn't Sign Up",
            statusCode: 400,
          ),
        ),
      );

      final result = await usecase(
        SignUpParams(
          email: tUser.email,
          password: 'empty',
          username: tUser.username,
          coordinates: tUser.coordinates,
          repeatPassword: 'aaaaaaaaaaaa',
        ),
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure(
            message: "Couldn't Sign Up",
            statusCode: 400,
          ),
        ),
      );

      verify(
        repo.signUp(
          username: tUser.username,
          email: tUser.email,
          password: 'empty',
          coordinates: tUser.coordinates,
          repeatPassword: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verifyNoMoreInteractions(repo);
    });
  });
}
