import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/src/data/models/user_model.dart';

abstract class AuthRemoteDatasrc {
  Future<UserModel> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
  });

  Future<void> forgotPassword(String email);

  Future<UserModel> signIn(
      {required String emailOrUsername, required String password});

  Future<UserModel> signUp({
    required String username,
    required String email,
    required String password,
    required String repeatPassword,
    required List<double> coordinates,
  });

  Future<void> updatePassword({
    required String password,
    required String repeatPassword,
  });

  Future<void> updateUser(UserModel user);
}

class AuthRemoteDatasrcImpl implements AuthRemoteDatasrc {
  @override
  Future<UserModel> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
  }) {
    // TODO: implement authWithProvider
    throw UnimplementedError();
  }

  @override
  Future<void> forgotPassword(String email) {
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signIn(
      {required String emailOrUsername, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUp({
    required String username,
    required String email,
    required String password,
    required String repeatPassword,
    required List<double> coordinates,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<void> updatePassword({
    required String password,
    required String repeatPassword,
  }) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(UserModel user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
