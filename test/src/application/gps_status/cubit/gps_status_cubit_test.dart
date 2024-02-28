import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/application/gps_status/cubit/gps_status_cubit.dart';
import 'package:locall_app/src/domain/usecases/gps_status/watch_gps_status_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'gps_status_cubit_test.mocks.dart';

@GenerateMocks([WatchGpsStatusUsecase])
void main() {
  late WatchGpsStatusUsecase usecase;
  late GpsStatusCubit cubit;

  setUp(() {
    usecase = MockWatchGpsStatusUsecase();
    cubit = GpsStatusCubit(usecase);
  });

  tearDown(() => cubit.close());

  group('watchLocationStatus', () {
    const tState = GpsStatusState.status(
      status: ServiceStatus.disabled,
      failureMessage: 'testFailure',
    );
    blocTest<GpsStatusCubit, GpsStatusState>(
      'emits [GpsStatusState.status] without Failure when watchLocationStatus'
      ' is called.',
      build: () {
        when(usecase()).thenAnswer(
          (_) => Stream.fromIterable([const Right(ServiceStatus.enabled)]),
        );
        return cubit;
      },
      act: (cubit) => cubit.watchLocationStatus(),
      expect: () => <GpsStatusState>[
        tState.copyWith(
          status: ServiceStatus.enabled,
          failureMessage: null,
        ),
      ],
      verify: (_) {
        verify(usecase()).called(1);
        verifyNoMoreInteractions(usecase);
      },
    );

    blocTest<GpsStatusCubit, GpsStatusState>(
      'emits [GpsStatusState.status] with Failure when watchLocationStatus is'
      ' called.',
      build: () {
        when(usecase()).thenAnswer(
          (_) => Stream.fromIterable(
            [const Left(GpsStatusFailure(message: 'An error occured'))],
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.watchLocationStatus(),
      expect: () => <GpsStatusState>[
        tState.copyWith(
          status: ServiceStatus.disabled,
          failureMessage: 'An error occured',
        ),
      ],
      verify: (_) {
        verify(usecase()).called(1);
        verifyNoMoreInteractions(usecase);
      },
    );
  });
}
