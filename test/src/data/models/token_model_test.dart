import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/token_model.dart';

import '../../../fixtures/reader.dart';

void main() {
  final tTokenModel = TokenModel.empty();

  final tJson = jsonDecode(fixture('tokens.json')) as DataMap;

  group('fromJson', () {
    test('should return a valid [TokenModel] from json', () {
      final result = TokenModel.fromJson(tJson);

      expect(result, isA<TokenModel>());
      expect(result, tTokenModel);
    });

    test('should throw an [Error] when json is invalid', () {
      final map = DataMap.from(tJson)..remove('refreshToken');

      const call = TokenModel.fromJson;

      expect(() => call(map), throwsA(isA<Error>()));
    });
  });

  group('toJson', () {
    test('should return a valid [DataMap (Map<String,dynamic>)] from model',
        () {
      final result = tTokenModel.toJson();

      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a valid [TokenModel] with updated values', () {
      final result = tTokenModel.copyWith(token: 'copyWith');

      expect(result.token, 'copyWith');
    });
  });
}
