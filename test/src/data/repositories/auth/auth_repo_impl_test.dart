import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/data/repositories/auth/auth_repo_impl.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repo_impl_test.mocks.dart';

@GenerateMocks([AuthRemoteDatasrc])
void main() {
  late MockAuthRemoteDatasrc remoteDatasrc;
  late AuthRepo repo;

  setUp(() {
    remoteDatasrc = MockAuthRemoteDatasrc();
    repo = AuthRepoImpl(remoteDatasrc);
  });

  group('authWithProvider', () {
    final tUser = UserModel.empty();
    const tException = ApiException(
      message: "Can't auth with provider",
      statusCode: 400,
    );
    test('should return [User] when call to remote source is successful',
        () async {
      when(
        remoteDatasrc.authWithProvider(
          provider: anyNamed('provider'),
          providerId: anyNamed('providerId'),
          email: anyNamed('email'),
        ),
      ).thenAnswer((_) async => tUser);

      final result = await repo.authWithProvider(
        provider: AuthWithProvider.google,
        providerId: 'emptyId',
        email: 'test123@test.com',
      );

      expect(result, Right<dynamic, User>(tUser));

      verify(
        remoteDatasrc.authWithProvider(
          provider: AuthWithProvider.google,
          providerId: 'emptyId',
          email: 'test123@test.com',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });

    test(
        'should return [ApiFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.authWithProvider(
          provider: anyNamed('provider'),
          providerId: anyNamed('providerId'),
          email: anyNamed('email'),
        ),
      ).thenThrow(tException);

      final result = await repo.authWithProvider(
        provider: AuthWithProvider.google,
        providerId: 'emptyId',
        email: 'test123@test.com',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tException,
          ),
        ),
      );

      verify(
        remoteDatasrc.authWithProvider(
          provider: AuthWithProvider.google,
          providerId: 'emptyId',
          email: 'test123@test.com',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });
  });

  group('forgotPassword', () {
    const tException = ApiException(
      message: "Can't reset password",
      statusCode: 400,
    );
    test('should return [void] when call to remote source is successful',
        () async {
      when(
        remoteDatasrc.forgotPassword(
          any,
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.forgotPassword(
        'test123@test.com',
      );

      expect(result, const Right<dynamic, void>(null));

      verify(
        remoteDatasrc.forgotPassword(
          'test123@test.com',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });

    test(
        'should return [ApiFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.forgotPassword(
          any,
        ),
      ).thenThrow(tException);

      final result = await repo.forgotPassword(
        'test123@test.com',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tException,
          ),
        ),
      );

      verify(
        remoteDatasrc.forgotPassword(
          'test123@test.com',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });
  });

  group('signIn', () {
    final tUser = UserModel.empty();
    const tException = ApiException(
      message: "Can't sign in",
      statusCode: 400,
    );
    test('should return [User] when call to remote source is successful',
        () async {
      when(
        remoteDatasrc.signIn(
          emailOrUsername: anyNamed('emailOrUsername'),
          password: anyNamed('password'),
        ),
      ).thenAnswer((_) async => tUser);

      final result = await repo.signIn(
        emailOrUsername: 'test123@test.com',
        password: 'aaaaaaaaaaaa',
      );

      expect(result, Right<dynamic, User>(tUser));

      verify(
        remoteDatasrc.signIn(
          emailOrUsername: 'test123@test.com',
          password: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });

    test(
        'should return [ApiFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.signIn(
          emailOrUsername: anyNamed('emailOrUsername'),
          password: anyNamed('password'),
        ),
      ).thenThrow(tException);

      final result = await repo.signIn(
        emailOrUsername: tUser.email,
        password: 'aaaaaaaaaaaa',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tException,
          ),
        ),
      );

      verify(
        remoteDatasrc.signIn(
          emailOrUsername: tUser.email,
          password: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });
  });

  group('updatePassword', () {
    const tException = ApiException(
      message: "Can't update password",
      statusCode: 400,
    );
    test('should return [void] when call to remote source is successful',
        () async {
      when(
        remoteDatasrc.updatePassword(
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.updatePassword(
        password: 'password123&',
        repeatPassword: 'password123&',
      );

      expect(result, const Right<dynamic, void>(null));

      verify(
        remoteDatasrc.updatePassword(
          password: 'password123&',
          repeatPassword: 'password123&',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });

    test(
        'should return [ApiFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.updatePassword(
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
        ),
      ).thenThrow(tException);

      final result = await repo.updatePassword(
        password: 'password123&',
        repeatPassword: 'password123&',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tException,
          ),
        ),
      );

      verify(
        remoteDatasrc.updatePassword(
          password: 'password123&',
          repeatPassword: 'password123&',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });
  });

  group('signUp', () {
    final tUser = UserModel.empty();
    const tException = ApiException(
      message: "Can't sign up",
      statusCode: 400,
    );
    test('should return [User] when call to remote source is successful',
        () async {
      when(
        remoteDatasrc.signUp(
          email: anyNamed('email'),
          password: anyNamed('password'),
          username: anyNamed('username'),
          repeatPassword: anyNamed('repeatPassword'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenAnswer((_) async => tUser);

      final result = await repo.signUp(
        email: tUser.email,
        password: 'aaaaaaaaaaaa',
        username: tUser.username,
        coordinates: tUser.location.coordinates,
        repeatPassword: 'aaaaaaaaaaaa',
      );

      expect(result, Right<dynamic, User>(tUser));

      verify(
        remoteDatasrc.signUp(
          email: tUser.email,
          password: 'aaaaaaaaaaaa',
          username: tUser.username,
          coordinates: tUser.location.coordinates,
          repeatPassword: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });

    test(
        'should return [ApiFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.signUp(
          email: anyNamed('email'),
          password: anyNamed('password'),
          username: anyNamed('username'),
          repeatPassword: anyNamed('repeatPassword'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenThrow(tException);

      final result = await repo.signUp(
        email: tUser.email,
        password: 'aaaaaaaaaaaa',
        username: tUser.username,
        coordinates: tUser.location.coordinates,
        repeatPassword: 'aaaaaaaaaaaa',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tException,
          ),
        ),
      );

      verify(
        remoteDatasrc.signUp(
          email: tUser.email,
          password: 'aaaaaaaaaaaa',
          username: tUser.username,
          coordinates: tUser.location.coordinates,
          repeatPassword: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });
  });

  group('updateUser', () {
    final tUser = UserModel.fromEntity(User.empty());
    const tException = ApiException(
      message: "Can't update password",
      statusCode: 400,
    );
    test('should return [void] when call to remote source is successful',
        () async {
      when(
        remoteDatasrc.updateUser(
          any,
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.updateUser(
        tUser,
      );

      expect(result, const Right<dynamic, void>(null));

      verify(
        remoteDatasrc.updateUser(
          tUser,
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });

    test(
        'should return [ApiFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.updateUser(
          any,
        ),
      ).thenThrow(tException);

      final result = await repo.updateUser(
        tUser,
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tException,
          ),
        ),
      );

      verify(
        remoteDatasrc.updateUser(
          tUser,
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });
  });
}
