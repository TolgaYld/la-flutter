import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/domain/entities/location_status.dart';
import 'package:locall_app/src/domain/repositories/location_status/location_status_repo.dart';
import 'package:locall_app/src/domain/usecases/location_status/watch_gps_status_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'watch_gps_status_usecase_test.mocks.dart';

@GenerateMocks([LocationStatusRepo])
void main() {
  late LocationStatusRepo repo;
  late WatchGpsStatusUsecase usecase;

  setUp(() {
    repo = MockLocationStatusRepo();
    usecase = WatchGpsStatusUsecase(repo);
  });

  group('WatchGpsStatusUsecase', () {
    final tLocationStatus = LocationStatus.empty();
    test('should emit a [LocationStatus] if call is successful', () async {
      when(repo.watchGpsStatus())
          .thenAnswer((_) => Stream.fromIterable([Right(tLocationStatus)]));

      final result = usecase();

      await expectLater(
        result,
        emits(Right<dynamic, LocationStatus>(tLocationStatus)),
      );
      verify(repo.watchGpsStatus()).called(1);
      verifyNoMoreInteractions(repo);
    });

    test('should emit a [LocationStatusFailure] if call is failed', () async {
      when(repo.watchGpsStatus()).thenAnswer(
        (_) => Stream.fromIterable([
          const Left(
            LocationStatusFailure(
              message: 'An Error occured when watching to LocationStatus',
            ),
          ),
        ]),
      );

      final result = usecase();

      await expectLater(
        result,
        emits(
          const Left<Failure, dynamic>(
            LocationStatusFailure(
              message: 'An Error occured when watching to LocationStatus',
            ),
          ),
        ),
      );
      verify(repo.watchGpsStatus()).called(1);
      verifyNoMoreInteractions(repo);
    });
  });
}
