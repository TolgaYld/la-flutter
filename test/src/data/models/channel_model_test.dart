import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/channel_model.dart';
import 'package:locall_app/src/domain/entities/channel.dart';

import '../../../fixtures/reader.dart';

void main() {
  final tChannelModel = ChannelModel.empty();

  test('should be a subclass of [Channel] entity', () {
    expect(tChannelModel, isA<Channel>());
  });

  final tJson = jsonDecode(fixture('channel/channel.json')) as DataMap;

  group('fromJson', () {
    test('should return a valid [ChannelModel] from json', () {
      final result = ChannelModel.fromJson(tJson);

      expect(result, isA<ChannelModel>());
      expect(result, tChannelModel);
    });

    test('should throw an [Error] when json is invalid', () {
      final map = DataMap.from(tJson)..remove('id');

      const call = ChannelModel.fromJson;

      expect(() => call(map), throwsA(isA<Error>()));
    });
  });

  group('toJson', () {
    test('should return a valid [DataMap (Map<String,dynamic>)] from model',
        () {
      final result = tChannelModel.toJson();

      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a valid [ChannelModel] with updated values', () {
      final result = tChannelModel.copyWith(id: 'copyWith');

      expect(result.id, 'copyWith');
    });
  });
}
