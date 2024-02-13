import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/utils/graphql/auth/gql_mutations.dart';
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_remote_datasrc_test.mocks.dart';

@GenerateMocks([GraphQLClient])
void main() {
  late MockGraphQLClient client;
  late AuthRemoteDatasrc datasrc;
  setUp(() {
    client = MockGraphQLClient();
    datasrc = AuthRemoteDatasrcImpl(client);
  });

  group('signUp', () {
    final tUserModel = UserModel.empty();
    final data = {
      'signUpUser': {
        'user': {
          '_id': 'empty',
          'username': 'empty',
          'email': 'test123@test.com',
          'location': {
            'coordinates': [
              3.69,
              3.69,
            ],
          },
          'distance': 9000,
          'points': 0,
          'official': false,
          'is_deleted': false,
          'is_banned': false,
          'is_admin': false,
          'provider': 'LOCAL',
          'auto_generated_username': false,
          'username_change_counter': 0,
          'created_at': '2024-02-10T14:38:36.936Z',
        },
      },
    };

    test('should return [User] when call to remote source is successful',
        () async {
      final options = MutationOptions(
        document: gql(GqlMutation.signUpMutation),
        variables: {
          'username': tUserModel.username,
          'email': tUserModel.email,
          'coordinates': tUserModel.location.coordinates,
          'password': '',
          'repeatPassword': '',
        },
      );
      when(client.mutate<dynamic>(any)).thenAnswer(
        (_) async => QueryResult(
          data: data,
          options: options,
          source: QueryResultSource.network,
        ),
      );

      final result = await datasrc.signUp(
        username: tUserModel.username,
        email: tUserModel.email,
        password: '',
        repeatPassword: '',
        coordinates: tUserModel.location.coordinates,
      );

      expect(result, tUserModel);

      verify(client.mutate(options)).called(1);

      verifyNoMoreInteractions(client);
    });

    test(
        'should throw an [ApiException] when call to remote source is '
        'unsuccessful', () async {
      final options = MutationOptions(
        document: gql(GqlMutation.signUpMutation),
        variables: {
          'username': tUserModel.username,
          'email': tUserModel.email,
          'coordinates': tUserModel.location.coordinates,
          'password': '',
          'repeatPassword': '',
        },
      );
      when(client.mutate<dynamic>(any)).thenThrow(
        const ApiException(message: "Couldn't create user"),
      );

      final methodCall = datasrc.signUp;

      expect(
        () => methodCall(
          username: tUserModel.username,
          email: tUserModel.email,
          password: '',
          repeatPassword: '',
          coordinates: tUserModel.location.coordinates,
        ),
        throwsA(
          const ApiException(message: "Couldn't create user"),
        ),
      );

      verify(client.mutate(options)).called(1);

      verifyNoMoreInteractions(client);
    });
  });
}
