import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/errors/exceptions.dart';

part 'failures.freezed.dart';

sealed class Failure {
  const Failure({required this.message, this.statusCode});

  final String message;
  final int? statusCode;
}

@freezed
class CacheFailure extends Failure with _$CacheFailure {
  const factory CacheFailure({
    required String message,
    @Default(500) int? statusCode,
  }) = _CacheFailure;
  factory CacheFailure.fromException(CacheException exception) => CacheFailure(
        message: exception.message,
        statusCode: exception.statusCode,
      );
}

@freezed
class ApiFailure extends Failure with _$ApiFailure {
  const factory ApiFailure({
    required String message,
    int? statusCode,
  }) = _ApiFailure;

  factory ApiFailure.fromException(ApiException exception) => ApiFailure(
        message: exception.message,
        statusCode: exception.statusCode,
      );
}
