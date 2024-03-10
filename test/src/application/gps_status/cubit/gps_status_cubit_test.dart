import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/application/gps_status/cubit/gps_status_cubit.dart';
import 'package:locall_app/src/domain/usecases/gps_status/get_gps_status_usecase.dart';
import 'package:locall_app/src/domain/usecases/gps_status/watch_gps_status_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'gps_status_cubit_test.mocks.dart';

@GenerateMocks([WatchGpsStatusUsecase, GetGpsStatusUsecase])
void main() {
  late WatchGpsStatusUsecase watchGpsStatusUsecase;
  late GetGpsStatusUsecase getGpsStatusUsecase;
  late GpsStatusCubit cubit;

  setUp(() {
    watchGpsStatusUsecase = MockWatchGpsStatusUsecase();
    getGpsStatusUsecase = MockGetGpsStatusUsecase();
    cubit = GpsStatusCubit(
      watchGpsStatusUsecase: watchGpsStatusUsecase,
      getGpsStatusUsecase: getGpsStatusUsecase,
    );
  });

  tearDown(() => cubit.close());

  test(
      'initial state should be [GpsStatusState.status(status: ServiceStatus.di'
      ' sabled, permission: LocationPermission.unableToDetermine)]', () async {
    expect(
      cubit.state,
      const GpsStatusState.status(
        status: ServiceStatus.disabled,
        permission: LocationPermission.whileInUse,
      ),
    );
  });

  group('watchLocationStatus', () {
    const tState = GpsStatusState.status(
      status: ServiceStatus.disabled,
      permission: LocationPermission.whileInUse,
      failureMessage: 'testFailure',
    );
    blocTest<GpsStatusCubit, GpsStatusState>(
      'emits [GpsStatusState.status] without Failure when watchLocationStatus'
      ' is called.',
      build: () {
        when(watchGpsStatusUsecase()).thenAnswer(
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
        verify(watchGpsStatusUsecase()).called(1);
        verifyNoMoreInteractions(watchGpsStatusUsecase);
      },
    );

    blocTest<GpsStatusCubit, GpsStatusState>(
      'emits [GpsStatusState.status] with Failure when watchLocationStatus is'
      ' called.',
      build: () {
        when(watchGpsStatusUsecase()).thenAnswer(
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
        verify(watchGpsStatusUsecase()).called(1);
        verifyNoMoreInteractions(watchGpsStatusUsecase);
      },
    );
  });

  group('getLocationStatus', () {
    const tState = GpsStatusState.status(
      status: ServiceStatus.disabled,
      permission: LocationPermission.unableToDetermine,
      failureMessage: 'testFailure',
    );
    blocTest<GpsStatusCubit, GpsStatusState>(
      'return [GpsStatusState.permission] without Failure when '
      'getLocationStatus is called.',
      build: () {
        when(getGpsStatusUsecase()).thenAnswer(
          (_) async => const Right(LocationPermission.whileInUse),
        );
        return cubit;
      },
      act: (cubit) => cubit.getLocationStatus(),
      expect: () => <GpsStatusState>[
        tState.copyWith(
          permission: LocationPermission.whileInUse,
          failureMessage: null,
        ),
      ],
      verify: (_) {
        verify(getGpsStatusUsecase()).called(1);
        verifyNoMoreInteractions(getGpsStatusUsecase);
      },
    );

    blocTest<GpsStatusCubit, GpsStatusState>(
      'emits [GpsStatusState.permission] with Failure when watchLocationStatus'
      ' is called.',
      build: () {
        when(getGpsStatusUsecase()).thenAnswer(
          (_) async =>
              const Left(GpsStatusFailure(message: 'An error occured')),
        );
        return cubit;
      },
      act: (cubit) => cubit.getLocationStatus(),
      expect: () => <GpsStatusState>[
        tState.copyWith(
          permission: LocationPermission.unableToDetermine,
          failureMessage: 'An error occured',
        ),
      ],
      verify: (_) {
        verify(getGpsStatusUsecase()).called(1);
        verifyNoMoreInteractions(getGpsStatusUsecase);
      },
    );
  });
}
