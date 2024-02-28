part of 'gps_status_cubit.dart';

@freezed
class GpsStatusState with _$GpsStatusState {
  const factory GpsStatusState.status({
    required ServiceStatus status,
    String? failureMessage,
  }) = _Status;
}
