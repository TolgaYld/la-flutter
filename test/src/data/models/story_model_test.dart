import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/story_model.dart';
import 'package:locall_app/src/domain/entities/story.dart';

import '../../../fixtures/reader.dart';

void main() {
  final tStoryModel = StoryModel.empty();

  test('should be a subclass of [Story] entity', () {
    expect(tStoryModel, isA<Story>());
  });

  final tJson = jsonDecode(fixture('story/story.json')) as DataMap;

  group('fromJson', () {
    test('should return a valid [StoryModel] from json', () {
      final result = StoryModel.fromJson(tJson);

      expect(result, isA<StoryModel>());
      expect(result, tStoryModel);
    });

    test('should throw an [Error] when json is invalid', () {
      final map = DataMap.from(tJson)..remove('_id');

      const call = StoryModel.fromJson;

      expect(() => call(map), throwsA(isA<Error>()));
    });
  });

  group('toJson', () {
    test('should return a valid [DataMap (Map<String,dynamic>)] from model',
        () {
      final result = tStoryModel.toJson();

      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a valid [StoryModel] with updated values', () {
      final result = tStoryModel.copyWith(id: 'copyWith');

      expect(result.id, 'copyWith');
    });
  });
}
