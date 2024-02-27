import 'package:locall_app/core/usecases/usecases.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/location_status.dart';
import 'package:locall_app/src/domain/repositories/location_status/location_status_repo.dart';

class WatchGpsStatusUsecase extends UsecaseWithoutParams<LocationStatus> {
  const WatchGpsStatusUsecase(this._repo);

  final LocationStatusRepo _repo;
  @override
  ResultStream<LocationStatus> call() => _repo.watchGpsStatus();
}
