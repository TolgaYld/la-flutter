import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<User> signUp({
    required String username,
    required String email,
    required String password,
  });

  ResultFuture<User> authWithService({
    AuthWithProvider authWithProvider,
  });

  ResultFuture<User> signIn({
    required String email,
    required String password,
  });

  ResultFuture<void> updateUser(User updateUser);

  ResultFuture<void> updatePassword({
    required String password,
    required String repeatPassword,
  });

  ResultFuture<void> forgotPassword(String email);
}
