// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_if_taken_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckIfTakenState {
  bool get isEmailTaken => throw _privateConstructorUsedError;
  bool get isUsernameTaken => throw _privateConstructorUsedError;
  bool get hasFailure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEmailTaken, bool isUsernameTaken, bool hasFailure)
        check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmailTaken, bool isUsernameTaken, bool hasFailure)?
        check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailTaken, bool isUsernameTaken, bool hasFailure)?
        check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckIfTakenStateCopyWith<CheckIfTakenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckIfTakenStateCopyWith<$Res> {
  factory $CheckIfTakenStateCopyWith(
          CheckIfTakenState value, $Res Function(CheckIfTakenState) then) =
      _$CheckIfTakenStateCopyWithImpl<$Res, CheckIfTakenState>;
  @useResult
  $Res call({bool isEmailTaken, bool isUsernameTaken, bool hasFailure});
}

/// @nodoc
class _$CheckIfTakenStateCopyWithImpl<$Res, $Val extends CheckIfTakenState>
    implements $CheckIfTakenStateCopyWith<$Res> {
  _$CheckIfTakenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailTaken = null,
    Object? isUsernameTaken = null,
    Object? hasFailure = null,
  }) {
    return _then(_value.copyWith(
      isEmailTaken: null == isEmailTaken
          ? _value.isEmailTaken
          : isEmailTaken // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsernameTaken: null == isUsernameTaken
          ? _value.isUsernameTaken
          : isUsernameTaken // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFailure: null == hasFailure
          ? _value.hasFailure
          : hasFailure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CheckIfTakenStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEmailTaken, bool isUsernameTaken, bool hasFailure});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckIfTakenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailTaken = null,
    Object? isUsernameTaken = null,
    Object? hasFailure = null,
  }) {
    return _then(_$InitialImpl(
      isEmailTaken: null == isEmailTaken
          ? _value.isEmailTaken
          : isEmailTaken // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsernameTaken: null == isUsernameTaken
          ? _value.isUsernameTaken
          : isUsernameTaken // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFailure: null == hasFailure
          ? _value.hasFailure
          : hasFailure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isEmailTaken,
      required this.isUsernameTaken,
      required this.hasFailure});

  @override
  final bool isEmailTaken;
  @override
  final bool isUsernameTaken;
  @override
  final bool hasFailure;

  @override
  String toString() {
    return 'CheckIfTakenState.check(isEmailTaken: $isEmailTaken, isUsernameTaken: $isUsernameTaken, hasFailure: $hasFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isEmailTaken, isEmailTaken) ||
                other.isEmailTaken == isEmailTaken) &&
            (identical(other.isUsernameTaken, isUsernameTaken) ||
                other.isUsernameTaken == isUsernameTaken) &&
            (identical(other.hasFailure, hasFailure) ||
                other.hasFailure == hasFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isEmailTaken, isUsernameTaken, hasFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEmailTaken, bool isUsernameTaken, bool hasFailure)
        check,
  }) {
    return check(isEmailTaken, isUsernameTaken, hasFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmailTaken, bool isUsernameTaken, bool hasFailure)?
        check,
  }) {
    return check?.call(isEmailTaken, isUsernameTaken, hasFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailTaken, bool isUsernameTaken, bool hasFailure)?
        check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(isEmailTaken, isUsernameTaken, hasFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckIfTakenState {
  const factory _Initial(
      {required final bool isEmailTaken,
      required final bool isUsernameTaken,
      required final bool hasFailure}) = _$InitialImpl;

  @override
  bool get isEmailTaken;
  @override
  bool get isUsernameTaken;
  @override
  bool get hasFailure;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
