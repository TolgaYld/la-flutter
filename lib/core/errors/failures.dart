import 'package:equatable/equatable.dart';
import 'package:locall_app/core/errors/exceptions.dart';

sealed class Failure extends Equatable {
  const Failure({required this.message});

  final String message;

  @override
  List<dynamic> get props => [message];
}

class CacheFailure extends Failure {
  CacheFailure({
    required super.message,
    this.statusCode = 500,
  }) : assert(
          statusCode is String || statusCode is int,
          'StatusCode cannot be a ${statusCode.runtimeType}',
        );
  CacheFailure.fromException(CacheException exception)
      : this(message: exception.message, statusCode: exception.statusCode);
  final dynamic statusCode;
}

class ApiFailure extends Failure {
  const ApiFailure({required super.message});

  ApiFailure.fromException(ApiException exception)
      : this(message: exception.message);
}
