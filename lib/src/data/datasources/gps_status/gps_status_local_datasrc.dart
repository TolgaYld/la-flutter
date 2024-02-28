import 'package:geolocator/geolocator.dart';

// ignore: one_member_abstracts
abstract class GpsStatusLocalDatasrc {
  Stream<ServiceStatus> getServiceStatusStream();
}
