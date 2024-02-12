import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/comment_model.dart';
import 'package:locall_app/src/domain/entities/comment.dart';

import '../../../fixtures/reader.dart';

void main() {
  final tCommentModel = CommentModel.empty();

  test('should be a subclass of [Comment] entity', () {
    expect(tCommentModel, isA<Comment>());
  });

  final tJson = jsonDecode(fixture('comment/comment.json')) as DataMap;

  group('fromJson', () {
    test('should return a valid [CommentModel] from json', () {
      final result = CommentModel.fromJson(tJson);

      expect(result, isA<CommentModel>());
      expect(result, tCommentModel);
    });

    test('should throw an [Error] when json is invalid', () {
      final map = DataMap.from(tJson)..remove('_id');

      const call = CommentModel.fromJson;

      expect(() => call(map), throwsA(isA<Error>()));
    });
  });

  group('toJson', () {
    test('should return a valid [DataMap (Map<String,dynamic>)] from model',
        () {
      final result = tCommentModel.toJson();

      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a valid [CommentModel] with updated values', () {
      final result = tCommentModel.copyWith(id: 'copyWith');

      expect(result.id, 'copyWith');
    });
  });
}
