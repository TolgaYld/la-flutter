import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/src/domain/usecases/gps_status/watch_gps_status_usecase.dart';

part 'gps_status_state.dart';
part 'gps_status_cubit.freezed.dart';

class GpsStatusCubit extends Cubit<GpsStatusState> {
  GpsStatusCubit(this._usecase)
      : super(const GpsStatusState.status(status: ServiceStatus.disabled));

  final WatchGpsStatusUsecase _usecase;

  void watchLocationStatus() {
    _usecase().listen((either) {
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
}
