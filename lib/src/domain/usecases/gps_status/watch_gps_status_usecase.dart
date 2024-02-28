import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/gps_status.dart';
import 'package:locall_app/src/domain/repositories/gps_status/gps_status_repo.dart';

class WatchGpsStatusUsecase extends UsecaseWithoutParams<GpsStatus> {
  const WatchGpsStatusUsecase(this._repo);

  final GpsStatusRepo _repo;
  @override
  ResultStream<GpsStatus> call() => _repo.watchGpsStatus();
}
