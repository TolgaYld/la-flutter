import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/utils/graphql/auth/gql_mutations.dart';
import 'package:locall_app/core/utils/graphql/auth/gql_querys.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/token_model.dart';
import 'package:locall_app/src/data/models/user_model.dart';

abstract class AuthRemoteDatasrc {
  Future<UserModel> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
    required List<double> coordinates,
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

  Future<TokenModel> updatePassword({
    required String password,
    required String repeatPassword,
  });

  Future<void> updateUser(UserModel user);

  Future<bool> checkIfEmailExists(String email);

  Future<bool> checkIfUsernameExists(String username);
}

class AuthRemoteDatasrcImpl implements AuthRemoteDatasrc {
  const AuthRemoteDatasrcImpl(this._client);

  final GraphQLClient _client;
  @override
  Future<UserModel> authWithProvider({
    required AuthWithProvider provider,
    required String providerId,
    required String email,
    required List<double> coordinates,
  }) async {
    try {
      final response = await _client.mutate(
        MutationOptions(
          document: gql(GqlMutation.authWithProviderMutation),
          variables: {
            'provider': provider,
            'provider_id': providerId,
            'email': email,
            'coordinates': coordinates,
          },
        ),
      );

      if (!response.hasException) {
        return UserModel.fromJson(
          (response.data!['authUserWithProvider'] as DataMap)['user']
              as DataMap,
        );
      } else {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString());
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final response = await _client.mutate(
        MutationOptions(
          document: gql(GqlMutation.forgotPasswordMutation),
          variables: {
            'email': email,
          },
        ),
      );
      if (response.hasException) {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString());
    }
  }

  @override
  Future<UserModel> signIn({
    required String emailOrUsername,
    required String password,
  }) async {
    try {
      final response = await _client.mutate(
        MutationOptions(
          document: gql(GqlMutation.signInMutation),
          variables: {
            'emailOrUsername': emailOrUsername,
            'password': password,
          },
        ),
      );
      if (!response.hasException) {
        return UserModel.fromJson(
          (response.data!['signInUser'] as DataMap)['user'] as DataMap,
        );
      } else {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString());
    }
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
            'repeat_password': repeatPassword,
            'coordinates': coordinates,
          },
        ),
      );
      if (!response.hasException) {
        return UserModel.fromJson(
          (response.data!['signUpUser'] as DataMap)['user'] as DataMap,
        );
      } else {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
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
  Future<TokenModel> updatePassword({
    required String password,
    required String repeatPassword,
  }) async {
    try {
      final response = await _client.mutate(
        MutationOptions(
          document: gql(GqlMutation.updatePasswordMutation),
          variables: {
            'password': password,
            'repeat_password': repeatPassword,
          },
        ),
      );
      if (!response.hasException) {
        return TokenModel.fromJson(
          (response.data!['updateUserPassword'] as DataMap)['tokens']
              as DataMap,
        );
      } else {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString());
    }
  }

  @override
  Future<void> updateUser(UserModel user) async {
    try {
      final response = await _client.mutate(
        MutationOptions(
          document: gql(GqlMutation.updateUserMutation),
          variables: {
            'coordinates': user.location.coordinates,
            'username': user.username,
          },
        ),
      );

      if (response.hasException) {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString());
    }
  }

  @override
  Future<bool> checkIfEmailExists(String email) async {
    try {
      final response = await _client.query(
        QueryOptions(
          document: gql(GqlQuerys.checkEmailExistsQuery),
          variables: {
            'email': email,
          },
        ),
      );

      if (!response.hasException) {
        return response.data!['checkIfEmailExists'] as bool;
      } else {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString());
    }
  }

  @override
  Future<bool> checkIfUsernameExists(String username) async {
    try {
      final response = await _client.query(
        QueryOptions(
          document: gql(GqlQuerys.checkUsernameExistsQuery),
          variables: {
            'username': username,
          },
        ),
      );

      if (!response.hasException) {
        return response.data!['checkIfUsernameExists'] as bool;
      } else {
        throw ApiException(
          message: response.exception!.graphqlErrors.first.message,
        );
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString());
    }
  }
}
