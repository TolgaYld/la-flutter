import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/user.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<User> signUp({
    required String username,
    required String email,
    required String password,
    required String repeatPassword,
    required List<double> coordinates,
  });

  ResultFuture<User> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
    required List<double> coordinates,
  });

  ResultFuture<User> signIn({
    required String emailOrUsername,
    required String password,
  });

  ResultFuture<void> updateUser(User updateUser);

  ResultFuture<void> updatePassword({
    required String password,
    required String repeatPassword,
  });

  ResultFuture<void> forgotPassword(String email);
}
