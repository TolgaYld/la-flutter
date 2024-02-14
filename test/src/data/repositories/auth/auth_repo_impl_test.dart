import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/src/data/datasources/auth/auth_local_datasrc.dart';
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart';
import 'package:locall_app/src/data/models/token_model.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/data/repositories/auth/auth_repo_impl.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repo_impl_test.mocks.dart';

@GenerateMocks([AuthRemoteDatasrc, AuthLocalDatasrc])
void main() {
  late MockAuthRemoteDatasrc remoteDatasrc;
  late MockAuthLocalDatasrc localDatasrc;
  late AuthRepo repo;

  setUp(() {
    remoteDatasrc = MockAuthRemoteDatasrc();
    localDatasrc = MockAuthLocalDatasrc();
    repo = AuthRepoImpl(
      remoteDatasrc: remoteDatasrc,
      localDatasrc: localDatasrc,
    );
  });

  group('authWithProvider', () {
    final tUser = UserModel.empty().copyWith(tokens: TokenModel.empty());
    const tApiException = ApiException(
      message: "Can't auth with provider",
    );

    const tCacheException = CacheException(message: "Can't cache tokens");
    test(
        'should store the tokens and return [User] when call to remote source '
        'is successful', () async {
      when(
        remoteDatasrc.authWithProvider(
          provider: anyNamed('provider'),
          providerId: anyNamed('providerId'),
          email: anyNamed('email'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenAnswer((_) async => tUser);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.authWithProvider(
        provider: AuthWithProvider.google,
        providerId: 'emptyId',
        email: 'test123@test.com',
        coordinates: [3.69, 3.69],
      );

      verify(
        localDatasrc.setTokens(
          token: tUser.tokens!.token,
          refreshToken: tUser.tokens!.refreshToken,
        ),
      ).called(1);

      expect(result, Right<dynamic, User>(tUser.copyWith(tokens: null)));

      verify(
        remoteDatasrc.authWithProvider(
          provider: AuthWithProvider.google,
          providerId: 'emptyId',
          email: 'test123@test.com',
          coordinates: [3.69, 3.69],
        ),
      ).called(1);
      verifyNoMoreInteractions(localDatasrc);
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
          coordinates: anyNamed('coordinates'),
        ),
      ).thenThrow(tApiException);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.authWithProvider(
        provider: AuthWithProvider.google,
        providerId: 'emptyId',
        email: 'test123@test.com',
        coordinates: [3.69, 3.69],
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tApiException,
          ),
        ),
      );

      verify(
        remoteDatasrc.authWithProvider(
          provider: AuthWithProvider.google,
          providerId: 'emptyId',
          email: 'test123@test.com',
          coordinates: [3.69, 3.69],
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });

    test(
        'should return [CacheFailure] when call to local source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.authWithProvider(
          provider: anyNamed('provider'),
          providerId: anyNamed('providerId'),
          email: anyNamed('email'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenAnswer((_) async => tUser);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenThrow(tCacheException);

      final result = await repo.authWithProvider(
        provider: AuthWithProvider.google,
        providerId: 'emptyId',
        email: 'test123@test.com',
        coordinates: [3.69, 3.69],
      );

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure.fromException(
            tCacheException,
          ),
        ),
      );

      verify(
        remoteDatasrc.authWithProvider(
          provider: AuthWithProvider.google,
          providerId: 'emptyId',
          email: 'test123@test.com',
          coordinates: [3.69, 3.69],
        ),
      ).called(1);

      verifyNoMoreInteractions(remoteDatasrc);
    });
  });

  group('forgotPassword', () {
    const tException = ApiException(
      message: "Can't reset password",
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
    final tUser = UserModel.empty().copyWith(tokens: TokenModel.empty());
    const tApiException = ApiException(
      message: "Can't auth with provider",
    );

    const tCacheException = CacheException(message: "Can't cache tokens");
    test(
        'should store the tokens and return [User] when call to remote source '
        'is successful', () async {
      when(
        remoteDatasrc.signIn(
          emailOrUsername: anyNamed('emailOrUsername'),
          password: anyNamed('password'),
        ),
      ).thenAnswer((_) async => tUser);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.signIn(
        emailOrUsername: 'test123@test.com',
        password: 'aaaaaaaaaaaa',
      );

      expect(result, Right<dynamic, User>(tUser.copyWith(tokens: null)));

      verify(
        remoteDatasrc.signIn(
          emailOrUsername: 'test123@test.com',
          password: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verify(
        localDatasrc.setTokens(
          token: tUser.tokens!.token,
          refreshToken: tUser.tokens!.refreshToken,
        ),
      ).called(1);
      verifyNoMoreInteractions(localDatasrc);
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
      ).thenThrow(tApiException);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.signIn(
        emailOrUsername: tUser.email,
        password: 'aaaaaaaaaaaa',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tApiException,
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

    test(
        'should return [CacheFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.signIn(
          emailOrUsername: anyNamed('emailOrUsername'),
          password: anyNamed('password'),
        ),
      ).thenAnswer((_) async => tUser);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenThrow(tCacheException);

      final result = await repo.signIn(
        emailOrUsername: tUser.email,
        password: 'aaaaaaaaaaaa',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure.fromException(
            tCacheException,
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
    const tApiException = ApiException(
      message: "Can't auth with provider",
    );

    const tCacheException = CacheException(message: "Can't cache tokens");

    final tTokenModel = TokenModel.empty();
    test('should return [void] when call to remote source is successful',
        () async {
      when(
        remoteDatasrc.updatePassword(
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
        ),
      ).thenAnswer((_) async => Future.value(tTokenModel));

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
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

      verify(
        localDatasrc.setTokens(
          token: tTokenModel.token,
          refreshToken: tTokenModel.refreshToken,
        ),
      ).called(1);
      verifyNoMoreInteractions(localDatasrc);

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
      ).thenThrow(tApiException);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.updatePassword(
        password: 'password123&',
        repeatPassword: 'password123&',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          ApiFailure.fromException(
            tApiException,
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

    test(
        'should return [CacheFailure] when call to local source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.updatePassword(
          password: anyNamed('password'),
          repeatPassword: anyNamed('repeatPassword'),
        ),
      ).thenAnswer((_) async => Future.value(tTokenModel));

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenThrow(tCacheException);

      final result = await repo.updatePassword(
        password: 'password123&',
        repeatPassword: 'password123&',
      );

      expect(
        result,
        Left<Failure, dynamic>(
          CacheFailure.fromException(
            tCacheException,
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
    final tUser = UserModel.empty().copyWith(tokens: TokenModel.empty());
    const tApiException = ApiException(
      message: "Can't auth with provider",
    );

    const tCacheException = CacheException(message: "Can't cache tokens");
    test(
        'should store the tokens and return [User] when call to remote source '
        'is successful', () async {
      when(
        remoteDatasrc.signUp(
          email: anyNamed('email'),
          password: anyNamed('password'),
          username: anyNamed('username'),
          repeatPassword: anyNamed('repeatPassword'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenAnswer((_) async => tUser);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenAnswer((_) async => Future.value());

      final result = await repo.signUp(
        email: tUser.email,
        password: 'aaaaaaaaaaaa',
        username: tUser.username,
        coordinates: tUser.location.coordinates,
        repeatPassword: 'aaaaaaaaaaaa',
      );

      expect(result, Right<dynamic, User>(tUser.copyWith(tokens: null)));

      verify(
        remoteDatasrc.signUp(
          email: tUser.email,
          password: 'aaaaaaaaaaaa',
          username: tUser.username,
          coordinates: tUser.location.coordinates,
          repeatPassword: 'aaaaaaaaaaaa',
        ),
      ).called(1);

      verify(
        localDatasrc.setTokens(
          token: tUser.tokens!.token,
          refreshToken: tUser.tokens!.refreshToken,
        ),
      ).called(1);
      verifyNoMoreInteractions(localDatasrc);

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
      ).thenThrow(tApiException);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenAnswer((_) async => Future.value());

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
            tApiException,
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

    test(
        'should return [CacheFailure] when call to remote source is'
        ' unsuccessful', () async {
      when(
        remoteDatasrc.signUp(
          email: anyNamed('email'),
          password: anyNamed('password'),
          username: anyNamed('username'),
          repeatPassword: anyNamed('repeatPassword'),
          coordinates: anyNamed('coordinates'),
        ),
      ).thenAnswer((_) async => tUser);

      when(
        localDatasrc.setTokens(
          token: anyNamed('token'),
          refreshToken: anyNamed('refreshToken'),
        ),
      ).thenThrow(tCacheException);

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
          CacheFailure.fromException(
            tCacheException,
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
