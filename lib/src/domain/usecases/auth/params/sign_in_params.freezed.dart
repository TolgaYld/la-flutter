// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInParams {
  String get emailOrUsername => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInParamsCopyWith<SignInParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInParamsCopyWith<$Res> {
  factory $SignInParamsCopyWith(
          SignInParams value, $Res Function(SignInParams) then) =
      _$SignInParamsCopyWithImpl<$Res, SignInParams>;
  @useResult
  $Res call({String emailOrUsername, String password});
}

/// @nodoc
class _$SignInParamsCopyWithImpl<$Res, $Val extends SignInParams>
    implements $SignInParamsCopyWith<$Res> {
  _$SignInParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailOrUsername = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      emailOrUsername: null == emailOrUsername
          ? _value.emailOrUsername
          : emailOrUsername // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInParamsImplCopyWith<$Res>
    implements $SignInParamsCopyWith<$Res> {
  factory _$$SignInParamsImplCopyWith(
          _$SignInParamsImpl value, $Res Function(_$SignInParamsImpl) then) =
      __$$SignInParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emailOrUsername, String password});
}

/// @nodoc
class __$$SignInParamsImplCopyWithImpl<$Res>
    extends _$SignInParamsCopyWithImpl<$Res, _$SignInParamsImpl>
    implements _$$SignInParamsImplCopyWith<$Res> {
  __$$SignInParamsImplCopyWithImpl(
      _$SignInParamsImpl _value, $Res Function(_$SignInParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailOrUsername = null,
    Object? password = null,
  }) {
    return _then(_$SignInParamsImpl(
      emailOrUsername: null == emailOrUsername
          ? _value.emailOrUsername
          : emailOrUsername // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInParamsImpl implements _SignInParams {
  const _$SignInParamsImpl(
      {required this.emailOrUsername, required this.password});

  @override
  final String emailOrUsername;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInParams(emailOrUsername: $emailOrUsername, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInParamsImpl &&
            (identical(other.emailOrUsername, emailOrUsername) ||
                other.emailOrUsername == emailOrUsername) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailOrUsername, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInParamsImplCopyWith<_$SignInParamsImpl> get copyWith =>
      __$$SignInParamsImplCopyWithImpl<_$SignInParamsImpl>(this, _$identity);
}

abstract class _SignInParams implements SignInParams {
  const factory _SignInParams(
      {required final String emailOrUsername,
      required final String password}) = _$SignInParamsImpl;

  @override
  String get emailOrUsername;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInParamsImplCopyWith<_$SignInParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
