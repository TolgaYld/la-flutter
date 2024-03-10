import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/domain/repositories/gps_status/gps_status_repo.dart';
import 'package:locall_app/src/domain/usecases/gps_status/get_gps_status_usecase.dart';
import 'package:mockito/mockito.dart';

import 'watch_gps_status_usecase_test.mocks.dart';

void main() {
  late GpsStatusRepo repo;
  late GetGpsStatusUsecase usecase;

  setUp(() {
    repo = MockGpsStatusRepo();
    usecase = GetGpsStatusUsecase(repo);
  });

  group('GetGpsStatusUsecase', () {
    test('should return a [LocationPermission] enum, whenn call is successful',
        () async {
      when(repo.getGpsStatus()).thenAnswer(
        (_) async => const Right(LocationPermission.whileInUse),
      );

      final result = await usecase();

      expect(
        result,
        const Right<dynamic, LocationPermission>(LocationPermission.whileInUse),
      );

      verify(repo.getGpsStatus()).called(1);
      verifyNoMoreInteractions(repo);
    });
    test('should return a [GpsStatusFailure], whenn call is unsuccessful',
        () async {
      const tFailure = GpsStatusFailure(
        message: "Can't get LocationPermission",
      );
      when(repo.getGpsStatus()).thenAnswer(
        (_) async => const Left(tFailure),
      );

      final result = await usecase();

      expect(
        result,
        const Left<GpsStatusFailure, dynamic>(tFailure),
      );

      verify(repo.getGpsStatus()).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
