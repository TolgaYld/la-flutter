import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/src/domain/usecases/gps_status/get_gps_status_usecase.dart';
import 'package:locall_app/src/domain/usecases/gps_status/watch_gps_status_usecase.dart';

part 'gps_status_state.dart';
part 'gps_status_cubit.freezed.dart';

class GpsStatusCubit extends Cubit<GpsStatusState> {
  GpsStatusCubit({
    required WatchGpsStatusUsecase watchGpsStatusUsecase,
    required GetGpsStatusUsecase getGpsStatusUsecase,
  })  : _watchGpsStatusUsecase = watchGpsStatusUsecase,
        _getGpsStatusUsecase = getGpsStatusUsecase,
        super(
          const GpsStatusState.status(
            status: ServiceStatus.disabled,
            permission: LocationPermission.whileInUse,
          ),
        );

  final WatchGpsStatusUsecase _watchGpsStatusUsecase;
  final GetGpsStatusUsecase _getGpsStatusUsecase;

  void watchLocationStatus() {
    _watchGpsStatusUsecase().listen((either) {
      either.fold(
        (failure) => emit(
          state.copyWith(
            status: ServiceStatus.disabled,
            failureMessage: failure.message,
          ),
        ),
        (status) => emit(
          state.copyWith(
            status: status,
            failureMessage: null,
          ),
        ),
      );
    });
  }

  Future<void> getLocationStatus() async {
    final result = await _getGpsStatusUsecase();

    result.fold(
        (failure) => emit(
              state.copyWith(
                failureMessage: failure.message,
                permission: LocationPermission.unableToDetermine,
              ),
            ), (permission) {
      return emit(
        state.copyWith(
          permission: permission,
          failureMessage: null,
        ),
      );
    });
  }
}
