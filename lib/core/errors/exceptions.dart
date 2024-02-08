import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class ServerException with _$ServerException implements Exception {
  const factory ServerException({
    required String message,
    required int statusCode,
  }) = _ServerException;
}

@freezed
class CacheException with _$CacheException implements Exception {
  const factory CacheException({
    required String message,
    @Default(500) int statusCode,
  }) = _CacheException;
}
