import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/post_model.dart';
import 'package:locall_app/src/domain/entities/post.dart';

import '../../../fixtures/reader.dart';

void main() {
  final tPostModel = PostModel.empty();

  test('should be a subclass of [Post] entity', () {
    expect(tPostModel, isA<Post>());
  });

  final tJson = jsonDecode(fixture('post/post.json')) as DataMap;

  group('fromJson', () {
    test('should return a valid [PostModel] from json', () {
      final result = PostModel.fromJson(tJson);

      expect(result, isA<PostModel>());
      expect(result, tPostModel);
    });

    test('should throw an [Error] when json is invalid', () {
      final map = DataMap.from(tJson)..remove('_id');

      const call = PostModel.fromJson;

      expect(() => call(map), throwsA(isA<Error>()));
    });
  });

  group('toJson', () {
    test('should return a valid [DataMap (Map<String,dynamic>)] from model',
        () {
      final result = tPostModel.toJson();

      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a valid [PostModel] with updated values', () {
      final result = tPostModel.copyWith(id: 'copyWith');

      expect(result.id, 'copyWith');
    });
  });
}
