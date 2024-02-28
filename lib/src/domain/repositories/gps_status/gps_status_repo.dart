import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/utils/typedefs.dart';

// ignore: one_member_abstracts
abstract class GpsStatusRepo {
  ResultStream<ServiceStatus> watchGpsStatus();
}
