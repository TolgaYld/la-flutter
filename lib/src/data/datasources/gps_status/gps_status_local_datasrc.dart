import 'package:geolocator/geolocator.dart';

// ignore: one_member_abstracts
abstract class GpsStatusLocalDatasrc {
  Stream<ServiceStatus> getServiceStatusStream();
}

class GpsStatusLocalDatasrcImpl implements GpsStatusLocalDatasrc {
  const GpsStatusLocalDatasrcImpl(this._geolocator);

  final GeolocatorPlatform _geolocator;
  @override
  Stream<ServiceStatus> getServiceStatusStream() =>
      _geolocator.getServiceStatusStream();
}
