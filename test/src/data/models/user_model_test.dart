import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/user.dart';

import '../../../fixtures/reader.dart';

void main() {
  final tUserModel = UserModel.empty();

  test('should be a subclass of [User] entity', () {
    expect(tUserModel, isA<User>());
  });

  final tJson = jsonDecode(fixture('user/user.json')) as DataMap;

  group('fromJson', () {
    test('should return a valid [UserModel] from json', () {
      final result = UserModel.fromJson(tJson);

      expect(result, isA<UserModel>());
      expect(result, tUserModel);
    });

    test('should throw an [Error] when json is invalid', () {
      final map = DataMap.from(tJson)..remove('_id');

      const call = UserModel.fromJson;

      expect(() => call(map), throwsA(isA<Error>()));
    });
  });

  group('toJson', () {
    test('should return a valid [DataMap (Map<String,dynamic>)] from model',
        () {
      final result = tUserModel.toJson();

      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a valid [UserModel] with updated values', () {
      final result = tUserModel.copyWith(id: 'copyWith');

      expect(result.id, 'copyWith');
    });
  });
}
