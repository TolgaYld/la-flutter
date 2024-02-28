import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class ApiException with _$ApiException implements Exception {
  const factory ApiException({
    required String message,
    int? statusCode,
  }) = _ApiException;
}

@freezed
class CacheException with _$CacheException implements Exception {
  const factory CacheException({
    required String message,
    @Default(500) int statusCode,
  }) = _CacheException;
}

@freezed
class GpsStatusException with _$GpsStatusException implements Exception {
  const factory GpsStatusException({
    required String message,
    @Default(500) int statusCode,
  }) = _GpsStatusException;
}
