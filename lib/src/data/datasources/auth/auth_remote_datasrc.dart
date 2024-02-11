import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/src/data/models/user_model.dart';

abstract class AuthRemoteDatasrc {
  Future<UserModel> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
  });

  Future<void> forgotPassword(String email);

  Future<UserModel> signIn({required String email, required String password});

  Future<UserModel> signUp({
    required String username,
    required String email,
    required String password,
  });

  Future<void> updatePassword({
    required String password,
    required String repeatPassword,
  });

  Future<void> updateUser(UserModel user);
}
