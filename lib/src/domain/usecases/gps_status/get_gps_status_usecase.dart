import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/repositories/gps_status/gps_status_repo.dart';

class GetGpsStatusUsecase extends UsecaseWithoutParams<LocationPermission> {
  const GetGpsStatusUsecase(this._repo);

  final GpsStatusRepo _repo;
  @override
  ResultFuture<LocationPermission> call() => _repo.getGpsStatus();
}
