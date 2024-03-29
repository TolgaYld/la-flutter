// Mocks generated by Mockito 5.4.4 from annotations
// in locall_app/test/src/domain/usecases/auth/sign_up_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:locall_app/core/errors/failures.dart' as _i5;
import 'package:locall_app/core/types/auth_with_provider.dart' as _i7;
import 'package:locall_app/src/domain/entities/user.dart' as _i6;
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepo extends _i1.Mock implements _i3.AuthRepo {
  MockAuthRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.User>> signUp({
    required String? username,
    required String? email,
    required String? password,
    required String? repeatPassword,
    required List<double>? coordinates,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [],
          {
            #username: username,
            #email: email,
            #password: password,
            #repeatPassword: repeatPassword,
            #coordinates: coordinates,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.User>>.value(
            _FakeEither_0<_i5.Failure, _i6.User>(
          this,
          Invocation.method(
            #signUp,
            [],
            {
              #username: username,
              #email: email,
              #password: password,
              #repeatPassword: repeatPassword,
              #coordinates: coordinates,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.User>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.User>> authWithProvider({
    required _i7.AuthWithProvider? provider,
    required String? providerId,
    required String? email,
    required List<double>? coordinates,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #authWithProvider,
          [],
          {
            #provider: provider,
            #providerId: providerId,
            #email: email,
            #coordinates: coordinates,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.User>>.value(
            _FakeEither_0<_i5.Failure, _i6.User>(
          this,
          Invocation.method(
            #authWithProvider,
            [],
            {
              #provider: provider,
              #providerId: providerId,
              #email: email,
              #coordinates: coordinates,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.User>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.User>> signIn({
    required String? emailOrUsername,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [],
          {
            #emailOrUsername: emailOrUsername,
            #password: password,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.User>>.value(
            _FakeEither_0<_i5.Failure, _i6.User>(
          this,
          Invocation.method(
            #signIn,
            [],
            {
              #emailOrUsername: emailOrUsername,
              #password: password,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.User>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> updateUser(_i6.User? updateUser) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUser,
          [updateUser],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, void>>.value(
            _FakeEither_0<_i5.Failure, void>(
          this,
          Invocation.method(
            #updateUser,
            [updateUser],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> updatePassword({
    required String? password,
    required String? repeatPassword,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updatePassword,
          [],
          {
            #password: password,
            #repeatPassword: repeatPassword,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, void>>.value(
            _FakeEither_0<_i5.Failure, void>(
          this,
          Invocation.method(
            #updatePassword,
            [],
            {
              #password: password,
              #repeatPassword: repeatPassword,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> forgotPassword(String? email) =>
      (super.noSuchMethod(
        Invocation.method(
          #forgotPassword,
          [email],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, void>>.value(
            _FakeEither_0<_i5.Failure, void>(
          this,
          Invocation.method(
            #forgotPassword,
            [email],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, bool>> checkIfUsernameExists(
          String? username) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkIfUsernameExists,
          [username],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, bool>>.value(
            _FakeEither_0<_i5.Failure, bool>(
          this,
          Invocation.method(
            #checkIfUsernameExists,
            [username],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, bool>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, bool>> checkIfEmailExists(String? email) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkIfEmailExists,
          [email],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, bool>>.value(
            _FakeEither_0<_i5.Failure, bool>(
          this,
          Invocation.method(
            #checkIfEmailExists,
            [email],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, bool>>);
}
