import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/utils/graphql/auth/gql_mutations.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/user_model.dart';

abstract class AuthRemoteDatasrc {
  Future<UserModel> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
  });

  Future<void> forgotPassword(String email);

  Future<UserModel> signIn({
    required String emailOrUsername,
    required String password,
  });

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
  const AuthRemoteDatasrcImpl(this._client);

  final GraphQLClient _client;
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
  Future<UserModel> signIn({
    required String emailOrUsername,
    required String password,
  }) {
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
  }) async {
    try {
      final response = await _client.mutate(
        MutationOptions(
          document: gql(GqlMutation.signUpMutation),
          variables: {
            'username': username,
            'email': email,
            'password': password,
            'repeatPassword': repeatPassword,
            'coordinates': coordinates,
          },
        ),
      );
      if (response.hasException) {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      } else {
        return UserModel.fromJson(
          (response.data!['signUpUser'] as DataMap)['user'] as DataMap,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(
        message: e.toString(),
      );
    }
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
