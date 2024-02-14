import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/utils/graphql/auth/gql_mutations.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/reader.dart';
import 'auth_remote_datasrc_test.mocks.dart';

@GenerateMocks([GraphQLClient])
void main() {
  late MockGraphQLClient client;
  late AuthRemoteDatasrc datasrc;
  setUp(() {
    client = MockGraphQLClient();
    datasrc = AuthRemoteDatasrcImpl(client);
  });

  final tUserModel = UserModel.empty();
  final data = jsonDecode(fixture('user/userRawFromServer.json')) as DataMap;

  group('signUp', () {
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

  group('signIn', () {
    test(
        'should store the token and return [User] when call to remote source is'
        ' successful', () async {
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
