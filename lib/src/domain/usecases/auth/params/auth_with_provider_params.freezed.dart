// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_with_provider_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthWithProviderParams {
  AuthWithProvider get provider => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthWithProviderParamsCopyWith<AuthWithProviderParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthWithProviderParamsCopyWith<$Res> {
  factory $AuthWithProviderParamsCopyWith(AuthWithProviderParams value,
          $Res Function(AuthWithProviderParams) then) =
      _$AuthWithProviderParamsCopyWithImpl<$Res, AuthWithProviderParams>;
  @useResult
  $Res call(
      {AuthWithProvider provider,
      String email,
      String providerId,
      List<double> coordinates});
}

/// @nodoc
class _$AuthWithProviderParamsCopyWithImpl<$Res,
        $Val extends AuthWithProviderParams>
    implements $AuthWithProviderParamsCopyWith<$Res> {
  _$AuthWithProviderParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? email = null,
    Object? providerId = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthWithProvider,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthWithProviderParamsImplCopyWith<$Res>
    implements $AuthWithProviderParamsCopyWith<$Res> {
  factory _$$AuthWithProviderParamsImplCopyWith(
          _$AuthWithProviderParamsImpl value,
          $Res Function(_$AuthWithProviderParamsImpl) then) =
      __$$AuthWithProviderParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthWithProvider provider,
      String email,
      String providerId,
      List<double> coordinates});
}

/// @nodoc
class __$$AuthWithProviderParamsImplCopyWithImpl<$Res>
    extends _$AuthWithProviderParamsCopyWithImpl<$Res,
        _$AuthWithProviderParamsImpl>
    implements _$$AuthWithProviderParamsImplCopyWith<$Res> {
  __$$AuthWithProviderParamsImplCopyWithImpl(
      _$AuthWithProviderParamsImpl _value,
      $Res Function(_$AuthWithProviderParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? email = null,
    Object? providerId = null,
    Object? coordinates = null,
  }) {
    return _then(_$AuthWithProviderParamsImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthWithProvider,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$AuthWithProviderParamsImpl implements _AuthWithProviderParams {
  const _$AuthWithProviderParamsImpl(
      {required this.provider,
      required this.email,
      required this.providerId,
      required final List<double> coordinates})
      : _coordinates = coordinates;

  @override
  final AuthWithProvider provider;
  @override
  final String email;
  @override
  final String providerId;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'AuthWithProviderParams(provider: $provider, email: $email, providerId: $providerId, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthWithProviderParamsImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider, email, providerId,
      const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthWithProviderParamsImplCopyWith<_$AuthWithProviderParamsImpl>
      get copyWith => __$$AuthWithProviderParamsImplCopyWithImpl<
          _$AuthWithProviderParamsImpl>(this, _$identity);
}

abstract class _AuthWithProviderParams implements AuthWithProviderParams {
  const factory _AuthWithProviderParams(
      {required final AuthWithProvider provider,
      required final String email,
      required final String providerId,
      required final List<double> coordinates}) = _$AuthWithProviderParamsImpl;

  @override
  AuthWithProvider get provider;
  @override
  String get email;
  @override
  String get providerId;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$AuthWithProviderParamsImplCopyWith<_$AuthWithProviderParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
