import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/errors/exceptions.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/datasources/gps_status/gps_status_local_datasrc.dart';
import 'package:locall_app/src/domain/repositories/gps_status/gps_status_repo.dart';
import 'package:rxdart/rxdart.dart';

class GpsStatusRepoImpl implements GpsStatusRepo {
  const GpsStatusRepoImpl(this._datasrc);

  final GpsStatusLocalDatasrc _datasrc;
  @override
  ResultStream<ServiceStatus> watchGpsStatus() {
    return _datasrc
        .getGeneralServiceStatusStream()
        .map<Either<Failure, ServiceStatus>>(Right.new)
        .onErrorReturnWith(
          (error, stackTrace) => Left(
            GpsStatusFailure.fromException(
              GpsStatusException(message: error.toString()),
            ),
          ),
        );
  }

  @override
  ResultFuture<LocationPermission> getGpsStatus() async {
    try {
      final result = await _datasrc.getServiceStatus();

      return Right(result);
    } on GpsStatusException catch (e) {
      return Left(GpsStatusFailure.fromException(e));
    }
  }
}
