import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/errors/exceptions.dart';

abstract class GpsStatusLocalDatasrc {
  Stream<ServiceStatus> getGeneralServiceStatusStream();

  Future<LocationPermission> getServiceStatus();
}

class GpsStatusLocalDatasrcImpl implements GpsStatusLocalDatasrc {
  const GpsStatusLocalDatasrcImpl(this._geolocator);

  final GeolocatorPlatform _geolocator;
  @override
  Stream<ServiceStatus> getGeneralServiceStatusStream() =>
      _geolocator.getServiceStatusStream();

  @override
  Future<LocationPermission> getServiceStatus() async {
    try {
      final result = await _geolocator.checkPermission();
      return result;
    } catch (e) {
      throw GpsStatusException(message: e.toString());
    }
  }
}
