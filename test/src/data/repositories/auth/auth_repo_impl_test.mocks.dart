// Mocks generated by Mockito 5.4.4 from annotations
// in locall_app/test/src/data/repositories/auth/auth_repo_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:locall_app/core/types/auth_with_provider.dart' as _i5;
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart'
    as _i3;
import 'package:locall_app/src/data/models/user_model.dart' as _i2;
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

class _FakeUserModel_0 extends _i1.SmartFake implements _i2.UserModel {
  _FakeUserModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRemoteDatasrc].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRemoteDatasrc extends _i1.Mock implements _i3.AuthRemoteDatasrc {
  MockAuthRemoteDatasrc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.UserModel> authWithProvider({
    required _i5.AuthWithProvider? provider,
    required String? providerId,
    required String? email,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #authWithProvider,
          [],
          {
            #provider: provider,
            #providerId: providerId,
            #email: email,
          },
        ),
        returnValue: _i4.Future<_i2.UserModel>.value(_FakeUserModel_0(
          this,
          Invocation.method(
            #authWithProvider,
            [],
            {
              #provider: provider,
              #providerId: providerId,
              #email: email,
            },
          ),
        )),
      ) as _i4.Future<_i2.UserModel>);

  @override
  _i4.Future<void> forgotPassword(String? email) => (super.noSuchMethod(
        Invocation.method(
          #forgotPassword,
          [email],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<_i2.UserModel> signIn({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i4.Future<_i2.UserModel>.value(_FakeUserModel_0(
          this,
          Invocation.method(
            #signIn,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i4.Future<_i2.UserModel>);

  @override
  _i4.Future<_i2.UserModel> signUp({
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
        returnValue: _i4.Future<_i2.UserModel>.value(_FakeUserModel_0(
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
      ) as _i4.Future<_i2.UserModel>);

  @override
  _i4.Future<void> updatePassword({
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
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<void> updateUser(_i2.UserModel? user) => (super.noSuchMethod(
        Invocation.method(
          #updateUser,
          [user],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
