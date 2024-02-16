// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdatePasswordParams {
  String get password => throw _privateConstructorUsedError;
  String get repeatPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatePasswordParamsCopyWith<UpdatePasswordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordParamsCopyWith<$Res> {
  factory $UpdatePasswordParamsCopyWith(UpdatePasswordParams value,
          $Res Function(UpdatePasswordParams) then) =
      _$UpdatePasswordParamsCopyWithImpl<$Res, UpdatePasswordParams>;
  @useResult
  $Res call({String password, String repeatPassword});
}

/// @nodoc
class _$UpdatePasswordParamsCopyWithImpl<$Res,
        $Val extends UpdatePasswordParams>
    implements $UpdatePasswordParamsCopyWith<$Res> {
  _$UpdatePasswordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePasswordParamsImplCopyWith<$Res>
    implements $UpdatePasswordParamsCopyWith<$Res> {
  factory _$$UpdatePasswordParamsImplCopyWith(_$UpdatePasswordParamsImpl value,
          $Res Function(_$UpdatePasswordParamsImpl) then) =
      __$$UpdatePasswordParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String repeatPassword});
}

/// @nodoc
class __$$UpdatePasswordParamsImplCopyWithImpl<$Res>
    extends _$UpdatePasswordParamsCopyWithImpl<$Res, _$UpdatePasswordParamsImpl>
    implements _$$UpdatePasswordParamsImplCopyWith<$Res> {
  __$$UpdatePasswordParamsImplCopyWithImpl(_$UpdatePasswordParamsImpl _value,
      $Res Function(_$UpdatePasswordParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$UpdatePasswordParamsImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordParamsImpl implements _UpdatePasswordParams {
  const _$UpdatePasswordParamsImpl(
      {required this.password, required this.repeatPassword});

  @override
  final String password;
  @override
  final String repeatPassword;

  @override
  String toString() {
    return 'UpdatePasswordParams(password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordParamsImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, repeatPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordParamsImplCopyWith<_$UpdatePasswordParamsImpl>
      get copyWith =>
          __$$UpdatePasswordParamsImplCopyWithImpl<_$UpdatePasswordParamsImpl>(
              this, _$identity);
}

abstract class _UpdatePasswordParams implements UpdatePasswordParams {
  const factory _UpdatePasswordParams(
      {required final String password,
      required final String repeatPassword}) = _$UpdatePasswordParamsImpl;

  @override
  String get password;
  @override
  String get repeatPassword;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePasswordParamsImplCopyWith<_$UpdatePasswordParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
