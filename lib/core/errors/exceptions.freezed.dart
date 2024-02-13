// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiException {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiExceptionCopyWith<ApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiExceptionImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ApiExceptionImplCopyWith(
          _$ApiExceptionImpl value, $Res Function(_$ApiExceptionImpl) then) =
      __$$ApiExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ApiExceptionImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ApiExceptionImpl>
    implements _$$ApiExceptionImplCopyWith<$Res> {
  __$$ApiExceptionImplCopyWithImpl(
      _$ApiExceptionImpl _value, $Res Function(_$ApiExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ApiExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiExceptionImpl implements _ApiException {
  const _$ApiExceptionImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiExceptionImplCopyWith<_$ApiExceptionImpl> get copyWith =>
      __$$ApiExceptionImplCopyWithImpl<_$ApiExceptionImpl>(this, _$identity);
}

abstract class _ApiException implements ApiException {
  const factory _ApiException({required final String message}) =
      _$ApiExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiExceptionImplCopyWith<_$ApiExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CacheException {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CacheExceptionCopyWith<CacheException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheExceptionCopyWith<$Res> {
  factory $CacheExceptionCopyWith(
          CacheException value, $Res Function(CacheException) then) =
      _$CacheExceptionCopyWithImpl<$Res, CacheException>;
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class _$CacheExceptionCopyWithImpl<$Res, $Val extends CacheException>
    implements $CacheExceptionCopyWith<$Res> {
  _$CacheExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CacheExceptionImplCopyWith<$Res>
    implements $CacheExceptionCopyWith<$Res> {
  factory _$$CacheExceptionImplCopyWith(_$CacheExceptionImpl value,
          $Res Function(_$CacheExceptionImpl) then) =
      __$$CacheExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$CacheExceptionImplCopyWithImpl<$Res>
    extends _$CacheExceptionCopyWithImpl<$Res, _$CacheExceptionImpl>
    implements _$$CacheExceptionImplCopyWith<$Res> {
  __$$CacheExceptionImplCopyWithImpl(
      _$CacheExceptionImpl _value, $Res Function(_$CacheExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$CacheExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CacheExceptionImpl implements _CacheException {
  const _$CacheExceptionImpl({required this.message, this.statusCode = 500});

  @override
  final String message;
  @override
  @JsonKey()
  final int statusCode;

  @override
  String toString() {
    return 'CacheException(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheExceptionImplCopyWith<_$CacheExceptionImpl> get copyWith =>
      __$$CacheExceptionImplCopyWithImpl<_$CacheExceptionImpl>(
          this, _$identity);
}

abstract class _CacheException implements CacheException {
  const factory _CacheException(
      {required final String message,
      final int statusCode}) = _$CacheExceptionImpl;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$CacheExceptionImplCopyWith<_$CacheExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
