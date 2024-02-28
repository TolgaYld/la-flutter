import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
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
    test('should emit a [ServiceStatus] if stream is successful', () {
      when(datasrc.getServiceStatusStream())
          .thenAnswer((_) => Stream.fromIterable([tGpsStatus]));

      final expected = [const Right<dynamic, ServiceStatus>(tGpsStatus)];

      final result = repo.watchGpsStatus();

      expectLater(result, emitsInOrder(expected));

      verify(datasrc.getServiceStatusStream()).called(1);
      verifyNoMoreInteractions(datasrc);
    });

    test('should emit a [GpsStatusFailure] if stream is unsuccessful', () {
      // Simuliere einen Fehler im Stream
      when(datasrc.getServiceStatusStream())
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

      verify(datasrc.getServiceStatusStream()).called(1);
      verifyNoMoreInteractions(datasrc);
    });
  });
}
