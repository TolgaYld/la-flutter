import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/location_status.dart';

// ignore: one_member_abstracts
abstract class LocationStatusRepo {
  ResultStream<LocationStatus> watchGpsStatus();
}
