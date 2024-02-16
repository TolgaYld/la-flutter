// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailOrUsername, String password) signIn,
    required TResult Function(String email, String password,
            String repeatPassword, String username, List<double> coordinates)
        signUp,
    required TResult Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)
        authWithProvider,
    required TResult Function(String password, String repeatPassword)
        updatePassword,
    required TResult Function(User user) updateUser,
    required TResult Function(String email) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailOrUsername, String password)? signIn,
    TResult? Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult? Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)?
        authWithProvider,
    TResult? Function(String password, String repeatPassword)? updatePassword,
    TResult? Function(User user)? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailOrUsername, String password)? signIn,
    TResult Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult Function(AuthWithProvider provider, String email, String providerId,
            List<double> coordinates)?
        authWithProvider,
    TResult Function(String password, String repeatPassword)? updatePassword,
    TResult Function(User user)? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_AuthWithProviderEvent value) authWithProvider,
    required TResult Function(_UpdatePasswordEvent value) updatePassword,
    required TResult Function(_UpdateUserEvent value) updateUser,
    required TResult Function(_ForgotPasswordEvent value) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult? Function(_UpdatePasswordEvent value)? updatePassword,
    TResult? Function(_UpdateUserEvent value)? updateUser,
    TResult? Function(_ForgotPasswordEvent value)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult Function(_UpdatePasswordEvent value)? updatePassword,
    TResult Function(_UpdateUserEvent value)? updateUser,
    TResult Function(_ForgotPasswordEvent value)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailOrUsername, String password});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailOrUsername = null,
    Object? password = null,
  }) {
    return _then(_$SignInEventImpl(
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

class _$SignInEventImpl implements _SignInEvent {
  const _$SignInEventImpl(
      {required this.emailOrUsername, required this.password});

  @override
  final String emailOrUsername;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(emailOrUsername: $emailOrUsername, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
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
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailOrUsername, String password) signIn,
    required TResult Function(String email, String password,
            String repeatPassword, String username, List<double> coordinates)
        signUp,
    required TResult Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)
        authWithProvider,
    required TResult Function(String password, String repeatPassword)
        updatePassword,
    required TResult Function(User user) updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return signIn(emailOrUsername, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailOrUsername, String password)? signIn,
    TResult? Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult? Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)?
        authWithProvider,
    TResult? Function(String password, String repeatPassword)? updatePassword,
    TResult? Function(User user)? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return signIn?.call(emailOrUsername, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailOrUsername, String password)? signIn,
    TResult Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult Function(AuthWithProvider provider, String email, String providerId,
            List<double> coordinates)?
        authWithProvider,
    TResult Function(String password, String repeatPassword)? updatePassword,
    TResult Function(User user)? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(emailOrUsername, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_AuthWithProviderEvent value) authWithProvider,
    required TResult Function(_UpdatePasswordEvent value) updatePassword,
    required TResult Function(_UpdateUserEvent value) updateUser,
    required TResult Function(_ForgotPasswordEvent value) forgotPassword,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult? Function(_UpdatePasswordEvent value)? updatePassword,
    TResult? Function(_UpdateUserEvent value)? updateUser,
    TResult? Function(_ForgotPasswordEvent value)? forgotPassword,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult Function(_UpdatePasswordEvent value)? updatePassword,
    TResult Function(_UpdateUserEvent value)? updateUser,
    TResult Function(_ForgotPasswordEvent value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInEvent implements AuthEvent {
  const factory _SignInEvent(
      {required final String emailOrUsername,
      required final String password}) = _$SignInEventImpl;

  String get emailOrUsername;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventImplCopyWith<$Res> {
  factory _$$SignUpEventImplCopyWith(
          _$SignUpEventImpl value, $Res Function(_$SignUpEventImpl) then) =
      __$$SignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String repeatPassword,
      String username,
      List<double> coordinates});
}

/// @nodoc
class __$$SignUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEventImpl>
    implements _$$SignUpEventImplCopyWith<$Res> {
  __$$SignUpEventImplCopyWithImpl(
      _$SignUpEventImpl _value, $Res Function(_$SignUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? repeatPassword = null,
    Object? username = null,
    Object? coordinates = null,
  }) {
    return _then(_$SignUpEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$SignUpEventImpl implements _SignUpEvent {
  const _$SignUpEventImpl(
      {required this.email,
      required this.password,
      required this.repeatPassword,
      required this.username,
      required final List<double> coordinates})
      : _coordinates = coordinates;

  @override
  final String email;
  @override
  final String password;
  @override
  final String repeatPassword;
  @override
  final String username;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password, repeatPassword: $repeatPassword, username: $username, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, repeatPassword,
      username, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      __$$SignUpEventImplCopyWithImpl<_$SignUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailOrUsername, String password) signIn,
    required TResult Function(String email, String password,
            String repeatPassword, String username, List<double> coordinates)
        signUp,
    required TResult Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)
        authWithProvider,
    required TResult Function(String password, String repeatPassword)
        updatePassword,
    required TResult Function(User user) updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return signUp(email, password, repeatPassword, username, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailOrUsername, String password)? signIn,
    TResult? Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult? Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)?
        authWithProvider,
    TResult? Function(String password, String repeatPassword)? updatePassword,
    TResult? Function(User user)? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return signUp?.call(email, password, repeatPassword, username, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailOrUsername, String password)? signIn,
    TResult Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult Function(AuthWithProvider provider, String email, String providerId,
            List<double> coordinates)?
        authWithProvider,
    TResult Function(String password, String repeatPassword)? updatePassword,
    TResult Function(User user)? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, repeatPassword, username, coordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_AuthWithProviderEvent value) authWithProvider,
    required TResult Function(_UpdatePasswordEvent value) updatePassword,
    required TResult Function(_UpdateUserEvent value) updateUser,
    required TResult Function(_ForgotPasswordEvent value) forgotPassword,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult? Function(_UpdatePasswordEvent value)? updatePassword,
    TResult? Function(_UpdateUserEvent value)? updateUser,
    TResult? Function(_ForgotPasswordEvent value)? forgotPassword,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult Function(_UpdatePasswordEvent value)? updatePassword,
    TResult Function(_UpdateUserEvent value)? updateUser,
    TResult Function(_ForgotPasswordEvent value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUpEvent implements AuthEvent {
  const factory _SignUpEvent(
      {required final String email,
      required final String password,
      required final String repeatPassword,
      required final String username,
      required final List<double> coordinates}) = _$SignUpEventImpl;

  String get email;
  String get password;
  String get repeatPassword;
  String get username;
  List<double> get coordinates;
  @JsonKey(ignore: true)
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthWithProviderEventImplCopyWith<$Res> {
  factory _$$AuthWithProviderEventImplCopyWith(
          _$AuthWithProviderEventImpl value,
          $Res Function(_$AuthWithProviderEventImpl) then) =
      __$$AuthWithProviderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AuthWithProvider provider,
      String email,
      String providerId,
      List<double> coordinates});
}

/// @nodoc
class __$$AuthWithProviderEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthWithProviderEventImpl>
    implements _$$AuthWithProviderEventImplCopyWith<$Res> {
  __$$AuthWithProviderEventImplCopyWithImpl(_$AuthWithProviderEventImpl _value,
      $Res Function(_$AuthWithProviderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? email = null,
    Object? providerId = null,
    Object? coordinates = null,
  }) {
    return _then(_$AuthWithProviderEventImpl(
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

class _$AuthWithProviderEventImpl implements _AuthWithProviderEvent {
  const _$AuthWithProviderEventImpl(
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
    return 'AuthEvent.authWithProvider(provider: $provider, email: $email, providerId: $providerId, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthWithProviderEventImpl &&
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
  _$$AuthWithProviderEventImplCopyWith<_$AuthWithProviderEventImpl>
      get copyWith => __$$AuthWithProviderEventImplCopyWithImpl<
          _$AuthWithProviderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailOrUsername, String password) signIn,
    required TResult Function(String email, String password,
            String repeatPassword, String username, List<double> coordinates)
        signUp,
    required TResult Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)
        authWithProvider,
    required TResult Function(String password, String repeatPassword)
        updatePassword,
    required TResult Function(User user) updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return authWithProvider(provider, email, providerId, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailOrUsername, String password)? signIn,
    TResult? Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult? Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)?
        authWithProvider,
    TResult? Function(String password, String repeatPassword)? updatePassword,
    TResult? Function(User user)? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return authWithProvider?.call(provider, email, providerId, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailOrUsername, String password)? signIn,
    TResult Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult Function(AuthWithProvider provider, String email, String providerId,
            List<double> coordinates)?
        authWithProvider,
    TResult Function(String password, String repeatPassword)? updatePassword,
    TResult Function(User user)? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (authWithProvider != null) {
      return authWithProvider(provider, email, providerId, coordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_AuthWithProviderEvent value) authWithProvider,
    required TResult Function(_UpdatePasswordEvent value) updatePassword,
    required TResult Function(_UpdateUserEvent value) updateUser,
    required TResult Function(_ForgotPasswordEvent value) forgotPassword,
  }) {
    return authWithProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult? Function(_UpdatePasswordEvent value)? updatePassword,
    TResult? Function(_UpdateUserEvent value)? updateUser,
    TResult? Function(_ForgotPasswordEvent value)? forgotPassword,
  }) {
    return authWithProvider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult Function(_UpdatePasswordEvent value)? updatePassword,
    TResult Function(_UpdateUserEvent value)? updateUser,
    TResult Function(_ForgotPasswordEvent value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (authWithProvider != null) {
      return authWithProvider(this);
    }
    return orElse();
  }
}

abstract class _AuthWithProviderEvent implements AuthEvent {
  const factory _AuthWithProviderEvent(
      {required final AuthWithProvider provider,
      required final String email,
      required final String providerId,
      required final List<double> coordinates}) = _$AuthWithProviderEventImpl;

  AuthWithProvider get provider;
  String get email;
  String get providerId;
  List<double> get coordinates;
  @JsonKey(ignore: true)
  _$$AuthWithProviderEventImplCopyWith<_$AuthWithProviderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordEventImplCopyWith<$Res> {
  factory _$$UpdatePasswordEventImplCopyWith(_$UpdatePasswordEventImpl value,
          $Res Function(_$UpdatePasswordEventImpl) then) =
      __$$UpdatePasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, String repeatPassword});
}

/// @nodoc
class __$$UpdatePasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdatePasswordEventImpl>
    implements _$$UpdatePasswordEventImplCopyWith<$Res> {
  __$$UpdatePasswordEventImplCopyWithImpl(_$UpdatePasswordEventImpl _value,
      $Res Function(_$UpdatePasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$UpdatePasswordEventImpl(
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

class _$UpdatePasswordEventImpl implements _UpdatePasswordEvent {
  const _$UpdatePasswordEventImpl(
      {required this.password, required this.repeatPassword});

  @override
  final String password;
  @override
  final String repeatPassword;

  @override
  String toString() {
    return 'AuthEvent.updatePassword(password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordEventImpl &&
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
  _$$UpdatePasswordEventImplCopyWith<_$UpdatePasswordEventImpl> get copyWith =>
      __$$UpdatePasswordEventImplCopyWithImpl<_$UpdatePasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailOrUsername, String password) signIn,
    required TResult Function(String email, String password,
            String repeatPassword, String username, List<double> coordinates)
        signUp,
    required TResult Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)
        authWithProvider,
    required TResult Function(String password, String repeatPassword)
        updatePassword,
    required TResult Function(User user) updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return updatePassword(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailOrUsername, String password)? signIn,
    TResult? Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult? Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)?
        authWithProvider,
    TResult? Function(String password, String repeatPassword)? updatePassword,
    TResult? Function(User user)? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return updatePassword?.call(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailOrUsername, String password)? signIn,
    TResult Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult Function(AuthWithProvider provider, String email, String providerId,
            List<double> coordinates)?
        authWithProvider,
    TResult Function(String password, String repeatPassword)? updatePassword,
    TResult Function(User user)? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_AuthWithProviderEvent value) authWithProvider,
    required TResult Function(_UpdatePasswordEvent value) updatePassword,
    required TResult Function(_UpdateUserEvent value) updateUser,
    required TResult Function(_ForgotPasswordEvent value) forgotPassword,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult? Function(_UpdatePasswordEvent value)? updatePassword,
    TResult? Function(_UpdateUserEvent value)? updateUser,
    TResult? Function(_ForgotPasswordEvent value)? forgotPassword,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult Function(_UpdatePasswordEvent value)? updatePassword,
    TResult Function(_UpdateUserEvent value)? updateUser,
    TResult Function(_ForgotPasswordEvent value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordEvent implements AuthEvent {
  const factory _UpdatePasswordEvent(
      {required final String password,
      required final String repeatPassword}) = _$UpdatePasswordEventImpl;

  String get password;
  String get repeatPassword;
  @JsonKey(ignore: true)
  _$$UpdatePasswordEventImplCopyWith<_$UpdatePasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserEventImplCopyWith<$Res> {
  factory _$$UpdateUserEventImplCopyWith(_$UpdateUserEventImpl value,
          $Res Function(_$UpdateUserEventImpl) then) =
      __$$UpdateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UpdateUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserEventImpl>
    implements _$$UpdateUserEventImplCopyWith<$Res> {
  __$$UpdateUserEventImplCopyWithImpl(
      _$UpdateUserEventImpl _value, $Res Function(_$UpdateUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateUserEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UpdateUserEventImpl implements _UpdateUserEvent {
  const _$UpdateUserEventImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      __$$UpdateUserEventImplCopyWithImpl<_$UpdateUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailOrUsername, String password) signIn,
    required TResult Function(String email, String password,
            String repeatPassword, String username, List<double> coordinates)
        signUp,
    required TResult Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)
        authWithProvider,
    required TResult Function(String password, String repeatPassword)
        updatePassword,
    required TResult Function(User user) updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailOrUsername, String password)? signIn,
    TResult? Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult? Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)?
        authWithProvider,
    TResult? Function(String password, String repeatPassword)? updatePassword,
    TResult? Function(User user)? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailOrUsername, String password)? signIn,
    TResult Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult Function(AuthWithProvider provider, String email, String providerId,
            List<double> coordinates)?
        authWithProvider,
    TResult Function(String password, String repeatPassword)? updatePassword,
    TResult Function(User user)? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_AuthWithProviderEvent value) authWithProvider,
    required TResult Function(_UpdatePasswordEvent value) updatePassword,
    required TResult Function(_UpdateUserEvent value) updateUser,
    required TResult Function(_ForgotPasswordEvent value) forgotPassword,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult? Function(_UpdatePasswordEvent value)? updatePassword,
    TResult? Function(_UpdateUserEvent value)? updateUser,
    TResult? Function(_ForgotPasswordEvent value)? forgotPassword,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult Function(_UpdatePasswordEvent value)? updatePassword,
    TResult Function(_UpdateUserEvent value)? updateUser,
    TResult Function(_ForgotPasswordEvent value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserEvent implements AuthEvent {
  const factory _UpdateUserEvent(final User user) = _$UpdateUserEventImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordEventImplCopyWith<$Res> {
  factory _$$ForgotPasswordEventImplCopyWith(_$ForgotPasswordEventImpl value,
          $Res Function(_$ForgotPasswordEventImpl) then) =
      __$$ForgotPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordEventImpl>
    implements _$$ForgotPasswordEventImplCopyWith<$Res> {
  __$$ForgotPasswordEventImplCopyWithImpl(_$ForgotPasswordEventImpl _value,
      $Res Function(_$ForgotPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordEventImpl implements _ForgotPasswordEvent {
  const _$ForgotPasswordEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordEventImplCopyWith<_$ForgotPasswordEventImpl> get copyWith =>
      __$$ForgotPasswordEventImplCopyWithImpl<_$ForgotPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailOrUsername, String password) signIn,
    required TResult Function(String email, String password,
            String repeatPassword, String username, List<double> coordinates)
        signUp,
    required TResult Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)
        authWithProvider,
    required TResult Function(String password, String repeatPassword)
        updatePassword,
    required TResult Function(User user) updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailOrUsername, String password)? signIn,
    TResult? Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult? Function(AuthWithProvider provider, String email,
            String providerId, List<double> coordinates)?
        authWithProvider,
    TResult? Function(String password, String repeatPassword)? updatePassword,
    TResult? Function(User user)? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailOrUsername, String password)? signIn,
    TResult Function(String email, String password, String repeatPassword,
            String username, List<double> coordinates)?
        signUp,
    TResult Function(AuthWithProvider provider, String email, String providerId,
            List<double> coordinates)?
        authWithProvider,
    TResult Function(String password, String repeatPassword)? updatePassword,
    TResult Function(User user)? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_AuthWithProviderEvent value) authWithProvider,
    required TResult Function(_UpdatePasswordEvent value) updatePassword,
    required TResult Function(_UpdateUserEvent value) updateUser,
    required TResult Function(_ForgotPasswordEvent value) forgotPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignUpEvent value)? signUp,
    TResult? Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult? Function(_UpdatePasswordEvent value)? updatePassword,
    TResult? Function(_UpdateUserEvent value)? updateUser,
    TResult? Function(_ForgotPasswordEvent value)? forgotPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_AuthWithProviderEvent value)? authWithProvider,
    TResult Function(_UpdatePasswordEvent value)? updatePassword,
    TResult Function(_UpdateUserEvent value)? updateUser,
    TResult Function(_ForgotPasswordEvent value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordEvent implements AuthEvent {
  const factory _ForgotPasswordEvent(final String email) =
      _$ForgotPasswordEventImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgotPasswordEventImplCopyWith<_$ForgotPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$SignedUpStateImplCopyWith<$Res> {
  factory _$$SignedUpStateImplCopyWith(
          _$SignedUpStateImpl value, $Res Function(_$SignedUpStateImpl) then) =
      __$$SignedUpStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SignedUpStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignedUpStateImpl>
    implements _$$SignedUpStateImplCopyWith<$Res> {
  __$$SignedUpStateImplCopyWithImpl(
      _$SignedUpStateImpl _value, $Res Function(_$SignedUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignedUpStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SignedUpStateImpl implements _SignedUpState {
  const _$SignedUpStateImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.signedUp(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedUpStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedUpStateImplCopyWith<_$SignedUpStateImpl> get copyWith =>
      __$$SignedUpStateImplCopyWithImpl<_$SignedUpStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return signedUp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return signedUp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return signedUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return signedUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(this);
    }
    return orElse();
  }
}

abstract class _SignedUpState implements AuthState {
  const factory _SignedUpState(final User user) = _$SignedUpStateImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$SignedUpStateImplCopyWith<_$SignedUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedInStateImplCopyWith<$Res> {
  factory _$$SignedInStateImplCopyWith(
          _$SignedInStateImpl value, $Res Function(_$SignedInStateImpl) then) =
      __$$SignedInStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SignedInStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignedInStateImpl>
    implements _$$SignedInStateImplCopyWith<$Res> {
  __$$SignedInStateImplCopyWithImpl(
      _$SignedInStateImpl _value, $Res Function(_$SignedInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignedInStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SignedInStateImpl implements _SignedInState {
  const _$SignedInStateImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.signedIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedInStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInStateImplCopyWith<_$SignedInStateImpl> get copyWith =>
      __$$SignedInStateImplCopyWithImpl<_$SignedInStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return signedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedInState implements AuthState {
  const factory _SignedInState(final User user) = _$SignedInStateImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$SignedInStateImplCopyWith<_$SignedInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdatedStateImplCopyWith<$Res> {
  factory _$$UserUpdatedStateImplCopyWith(_$UserUpdatedStateImpl value,
          $Res Function(_$UserUpdatedStateImpl) then) =
      __$$UserUpdatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserUpdatedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserUpdatedStateImpl>
    implements _$$UserUpdatedStateImplCopyWith<$Res> {
  __$$UserUpdatedStateImplCopyWithImpl(_$UserUpdatedStateImpl _value,
      $Res Function(_$UserUpdatedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserUpdatedStateImpl implements _UserUpdatedState {
  const _$UserUpdatedStateImpl();

  @override
  String toString() {
    return 'AuthState.userUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserUpdatedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return userUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return userUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserUpdatedState implements AuthState {
  const factory _UserUpdatedState() = _$UserUpdatedStateImpl;
}

/// @nodoc
abstract class _$$PasswordChangedStateImplCopyWith<$Res> {
  factory _$$PasswordChangedStateImplCopyWith(_$PasswordChangedStateImpl value,
          $Res Function(_$PasswordChangedStateImpl) then) =
      __$$PasswordChangedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordChangedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PasswordChangedStateImpl>
    implements _$$PasswordChangedStateImplCopyWith<$Res> {
  __$$PasswordChangedStateImplCopyWithImpl(_$PasswordChangedStateImpl _value,
      $Res Function(_$PasswordChangedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordChangedStateImpl implements _PasswordChangedState {
  const _$PasswordChangedStateImpl();

  @override
  String toString() {
    return 'AuthState.passwordChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return passwordChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return passwordChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChangedState implements AuthState {
  const factory _PasswordChangedState() = _$PasswordChangedStateImpl;
}

/// @nodoc
abstract class _$$AuhtWithProviderStateImplCopyWith<$Res> {
  factory _$$AuhtWithProviderStateImplCopyWith(
          _$AuhtWithProviderStateImpl value,
          $Res Function(_$AuhtWithProviderStateImpl) then) =
      __$$AuhtWithProviderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuhtWithProviderStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuhtWithProviderStateImpl>
    implements _$$AuhtWithProviderStateImplCopyWith<$Res> {
  __$$AuhtWithProviderStateImplCopyWithImpl(_$AuhtWithProviderStateImpl _value,
      $Res Function(_$AuhtWithProviderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuhtWithProviderStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuhtWithProviderStateImpl implements _AuhtWithProviderState {
  const _$AuhtWithProviderStateImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticatedWithProvider(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuhtWithProviderStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuhtWithProviderStateImplCopyWith<_$AuhtWithProviderStateImpl>
      get copyWith => __$$AuhtWithProviderStateImplCopyWithImpl<
          _$AuhtWithProviderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return authenticatedWithProvider(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return authenticatedWithProvider?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authenticatedWithProvider != null) {
      return authenticatedWithProvider(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return authenticatedWithProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return authenticatedWithProvider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticatedWithProvider != null) {
      return authenticatedWithProvider(this);
    }
    return orElse();
  }
}

abstract class _AuhtWithProviderState implements AuthState {
  const factory _AuhtWithProviderState(final User user) =
      _$AuhtWithProviderStateImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AuhtWithProviderStateImplCopyWith<_$AuhtWithProviderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordResettedStateImplCopyWith<$Res> {
  factory _$$PasswordResettedStateImplCopyWith(
          _$PasswordResettedStateImpl value,
          $Res Function(_$PasswordResettedStateImpl) then) =
      __$$PasswordResettedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordResettedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PasswordResettedStateImpl>
    implements _$$PasswordResettedStateImplCopyWith<$Res> {
  __$$PasswordResettedStateImplCopyWithImpl(_$PasswordResettedStateImpl _value,
      $Res Function(_$PasswordResettedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordResettedStateImpl implements _PasswordResettedState {
  const _$PasswordResettedStateImpl();

  @override
  String toString() {
    return 'AuthState.passwordResetted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResettedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return passwordResetted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return passwordResetted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (passwordResetted != null) {
      return passwordResetted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return passwordResetted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return passwordResetted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (passwordResetted != null) {
      return passwordResetted(this);
    }
    return orElse();
  }
}

abstract class _PasswordResettedState implements AuthState {
  const factory _PasswordResettedState() = _$PasswordResettedStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedUp,
    required TResult Function(User user) signedIn,
    required TResult Function() userUpdated,
    required TResult Function() passwordChanged,
    required TResult Function(User user) authenticatedWithProvider,
    required TResult Function() passwordResetted,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedUp,
    TResult? Function(User user)? signedIn,
    TResult? Function()? userUpdated,
    TResult? Function()? passwordChanged,
    TResult? Function(User user)? authenticatedWithProvider,
    TResult? Function()? passwordResetted,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedUp,
    TResult Function(User user)? signedIn,
    TResult Function()? userUpdated,
    TResult Function()? passwordChanged,
    TResult Function(User user)? authenticatedWithProvider,
    TResult Function()? passwordResetted,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SignedUpState value) signedUp,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_UserUpdatedState value) userUpdated,
    required TResult Function(_PasswordChangedState value) passwordChanged,
    required TResult Function(_AuhtWithProviderState value)
        authenticatedWithProvider,
    required TResult Function(_PasswordResettedState value) passwordResetted,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SignedUpState value)? signedUp,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_UserUpdatedState value)? userUpdated,
    TResult? Function(_PasswordChangedState value)? passwordChanged,
    TResult? Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult? Function(_PasswordResettedState value)? passwordResetted,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SignedUpState value)? signedUp,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_UserUpdatedState value)? userUpdated,
    TResult Function(_PasswordChangedState value)? passwordChanged,
    TResult Function(_AuhtWithProviderState value)? authenticatedWithProvider,
    TResult Function(_PasswordResettedState value)? passwordResetted,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AuthState {
  const factory _ErrorState(final String message) = _$ErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
