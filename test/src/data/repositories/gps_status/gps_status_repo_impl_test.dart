import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/data/datasources/gps_status/gps_status_local_datasrc.dart';
import 'package:locall_app/src/data/repositories/gps_status/gps_status_repo_impl.dart';
import 'package:locall_app/src/domain/repositories/gps_status/gps_status_repo.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'gps_status_repo_impl_test.mocks.dart';

@GenerateMocks([GpsStatusLocalDatasrc])
void main() {
  late GpsStatusLocalDatasrc datasrc;
  late GpsStatusRepo repo;
  setUp(() {
    datasrc = MockGpsStatusLocalDatasrc();
    repo = GpsStatusRepoImpl(datasrc);
  });

  group('watchGpsStatus', () {
    const tGpsStatus = ServiceStatus.enabled;
    test('should emit a [ServiceStatus] when stream is successful', () {
      when(datasrc.getGeneralServiceStatusStream())
          .thenAnswer((_) => Stream.fromIterable([tGpsStatus]));

      final expected = [const Right<dynamic, ServiceStatus>(tGpsStatus)];

      final result = repo.watchGpsStatus();

      expectLater(result, emitsInOrder(expected));

      verify(datasrc.getGeneralServiceStatusStream()).called(1);
      verifyNoMoreInteractions(datasrc);
    });

    test('should emit a [GpsStatusFailure] when stream is unsuccessful', () {
      when(datasrc.getGeneralServiceStatusStream())
          .thenAnswer((_) => Stream.error(Error()));

      final stream = repo.watchGpsStatus();

      expectLater(
        stream,
        emitsInOrder([
          predicate((e) {
            if (e is Either<Failure, ServiceStatus>) {
              return e.fold(
                (failure) => failure is GpsStatusFailure,
                (_) => false,
              );
            }
            return false;
          }),
        ]),
      );

      verify(datasrc.getGeneralServiceStatusStream()).called(1);
      verifyNoMoreInteractions(datasrc);
    });
  });

  group('getGpsStatus', () {
    const tGpsStatus = LocationPermission.always;

    const tException =
        GpsStatusException(message: "Can't get LocationPermissions");
    test('should return [LocationPermission] when call is successful',
        () async {
      when(datasrc.getServiceStatus()).thenAnswer((_) async => tGpsStatus);

      final result = await repo.getGpsStatus();

      expect(result, const Right<dynamic, LocationPermission>(tGpsStatus));

      verify(datasrc.getServiceStatus()).called(1);
      verifyNoMoreInteractions(datasrc);
    });

    test('should return a [GpsStatusFailure] when call is unsuccessful',
        () async {
      // Simuliere einen Fehler im Stream
      when(datasrc.getServiceStatus()).thenThrow(tException);

      final result = await repo.getGpsStatus();

      expect(
        result,
        Left<GpsStatusFailure, dynamic>(
          GpsStatusFailure.fromException(tException),
        ),
      );

      verify(datasrc.getServiceStatus()).called(1);
      verifyNoMoreInteractions(datasrc);
    });
  });
}
