import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/report_model.dart';
import 'package:locall_app/src/domain/entities/report.dart';

import '../../../fixtures/reader.dart';

void main() {
  final tReportModel = ReportModel.empty();

  test('should be a subclass of [Report] entity', () {
    expect(tReportModel, isA<Report>());
  });

  final tJson = jsonDecode(fixture('report/report.json')) as DataMap;

  group('fromJson', () {
    test('should return a valid [ReportModel] from json', () {
      final result = ReportModel.fromJson(tJson);

      expect(result, isA<ReportModel>());
      expect(result, tReportModel);
    });

    test('should throw an [Error] when json is invalid', () {
      final map = DataMap.from(tJson)..remove('_id');

      const call = ReportModel.fromJson;

      expect(() => call(map), throwsA(isA<Error>()));
    });
  });

  group('toJson', () {
    test('should return a valid [DataMap (Map<String,dynamic>)] from model',
        () {
      final result = tReportModel.toJson();

      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a valid [ReportModel] with updated values', () {
      final result = tReportModel.copyWith(id: 'copyWith');

      expect(result.id, 'copyWith');
    });
  });
}
