import 'package:locall_app/core/types/location_service_status.dart';

class GpsStatus {
  const GpsStatus(this.status);

  factory GpsStatus.empty() => const GpsStatus(LocationServiceStatus.enabled);
  final LocationServiceStatus status;
}
