import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:locall_app/src/application/gps_status/cubit/gps_status_cubit.dart';
import 'package:locall_app/src/data/datasources/gps_status/gps_status_local_datasrc.dart';
import 'package:locall_app/src/data/repositories/gps_status/gps_status_repo_impl.dart';
import 'package:locall_app/src/domain/repositories/gps_status/gps_status_repo.dart';
import 'package:locall_app/src/domain/usecases/gps_status/get_gps_status_usecase.dart';
import 'package:locall_app/src/domain/usecases/gps_status/watch_gps_status_usecase.dart';

Future<void> initGpsStatus(GetIt sl) async {
  // Cubit - App Logic
  sl
    ..registerFactory(
      () => GpsStatusCubit(
        watchGpsStatusUsecase: sl(),
        getGpsStatusUsecase: sl(),
      ),
    )

    // Usecases
    ..registerLazySingleton(() => WatchGpsStatusUsecase(sl()))
    ..registerLazySingleton(() => GetGpsStatusUsecase(sl()))

    // Repo
    ..registerLazySingleton<GpsStatusRepo>(() => GpsStatusRepoImpl(sl()))

    // Datasrc
    ..registerLazySingleton<GpsStatusLocalDatasrc>(
      () => GpsStatusLocalDatasrcImpl(sl()),
    )

    // External
    ..registerLazySingleton(() => GeolocatorPlatform.instance);
}
