import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/src/data/datasources/gps_status/gps_status_local_datasrc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'gps_status_local_datasrc_test.mocks.dart';

@GenerateMocks([GeolocatorPlatform])
void main() {
  late GeolocatorPlatform geolocator;
  late GpsStatusLocalDatasrc datasrc;
  setUp(() {
    geolocator = MockGeolocatorPlatform();
    datasrc = GpsStatusLocalDatasrcImpl(geolocator);
  });

  group('getGeneralServiceStatusStream', () {
    test('should emit [ServiceStatus] to find out if LocationService is on/off',
        () {
      when(geolocator.getServiceStatusStream())
          .thenAnswer((_) => Stream.fromIterable([ServiceStatus.enabled]));

      final result = datasrc.getGeneralServiceStatusStream();

      expectLater(result, emits(ServiceStatus.enabled));

      verify(geolocator.getServiceStatusStream()).called(1);
      verifyNoMoreInteractions(geolocator);
    });
  });

  group('getServiceStatus', () {
    test('should return [LocationPermission] to find out the status', () async {
      const tLocationPermission = LocationPermission.denied;
      when(geolocator.checkPermission())
          .thenAnswer((_) async => tLocationPermission);

      final result = await datasrc.getServiceStatus();

      expect(result, tLocationPermission);
      verify(geolocator.checkPermission()).called(1);
      verifyNoMoreInteractions(geolocator);
    });
    test('should throw [GpsStatusException] when check status is failed', () {
      when(geolocator.checkPermission()).thenThrow(Exception());

      final methodCall = datasrc.getServiceStatus;

      expect(methodCall(), throwsA(isA<GpsStatusException>()));
      verify(geolocator.checkPermission()).called(1);
      verifyNoMoreInteractions(geolocator);
    });
  });
}
