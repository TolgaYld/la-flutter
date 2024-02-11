import 'package:dartz/dartz.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl(this._remoteDatasrc);
  final AuthRemoteDatasrc _remoteDatasrc;
  @override
  ResultFuture<User> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
  }) async {
    try {
      final result = await _remoteDatasrc.authWithProvider(
        provider: provider,
        providerId: providerId,
        email: email,
      );

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> forgotPassword(String email) async {
    try {
      await _remoteDatasrc.forgotPassword(email);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }

  @override
  ResultFuture<User> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _remoteDatasrc.signIn(
        email: email,
        password: password,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }

  @override
  ResultFuture<User> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final result = await _remoteDatasrc.signUp(
        username: username,
        email: email,
        password: password,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
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
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> updateUser(User updateUser) async {
    try {
      await _remoteDatasrc.updateUser(UserModel.fromEntity(updateUser));
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }
}
