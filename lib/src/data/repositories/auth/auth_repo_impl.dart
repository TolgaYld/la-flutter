import 'package:dartz/dartz.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/datasources/auth/auth_local_datasrc.dart';
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl({
    required AuthRemoteDatasrc remoteDatasrc,
    required AuthLocalDatasrc localDatasrc,
  })  : _remoteDatasrc = remoteDatasrc,
        _localDatasrc = localDatasrc;

  final AuthRemoteDatasrc _remoteDatasrc;
  final AuthLocalDatasrc _localDatasrc;

  @override
  ResultFuture<User> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
    required List<double> coordinates,
  }) async {
    try {
      final result = await _remoteDatasrc.authWithProvider(
        provider: provider,
        providerId: providerId,
        email: email,
        coordinates: coordinates,
      );

      await _localDatasrc.setTokens(
        token: result.tokens!.token,
        refreshToken: result.tokens!.refreshToken,
      );

      return Right(result.copyWith(tokens: null));
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> forgotPassword(String email) async {
    try {
      await _remoteDatasrc.forgotPassword(email);
      return const Right(null);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<User> signIn({
    required String emailOrUsername,
    required String password,
  }) async {
    try {
      final result = await _remoteDatasrc.signIn(
        emailOrUsername: emailOrUsername,
        password: password,
      );

      await _localDatasrc.setTokens(
        token: result.tokens!.token,
        refreshToken: result.tokens!.refreshToken,
      );

      return Right(result.copyWith(tokens: null));
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<User> signUp({
    required String username,
    required String email,
    required String password,
    required String repeatPassword,
    required List<double> coordinates,
  }) async {
    try {
      final result = await _remoteDatasrc.signUp(
        username: username,
        email: email,
        password: password,
        repeatPassword: repeatPassword,
        coordinates: coordinates,
      );
      await _localDatasrc.setTokens(
        token: result.tokens!.token,
        refreshToken: result.tokens!.refreshToken,
      );

      return Right(result.copyWith(tokens: null));
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> updatePassword({
    required String password,
    required String repeatPassword,
  }) async {
    try {
      await _remoteDatasrc.updatePassword(
        password: password,
        repeatPassword: repeatPassword,
      );

      return const Right(null);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> updateUser(User updateUser) async {
    try {
      await _remoteDatasrc.updateUser(UserModel.fromEntity(updateUser));
      return const Right(null);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }
}
