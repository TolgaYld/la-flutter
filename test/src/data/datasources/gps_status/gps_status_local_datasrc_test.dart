import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
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

  group('getServiceStatusStream', () {
    test('should emit [ServiceStatus] to find out if LocationService is on/off',
        () {
      when(geolocator.getServiceStatusStream())
          .thenAnswer((_) => Stream.fromIterable([ServiceStatus.enabled]));

      final result = datasrc.getServiceStatusStream();

      expectLater(result, emits(ServiceStatus.enabled));
    });
  });
}
