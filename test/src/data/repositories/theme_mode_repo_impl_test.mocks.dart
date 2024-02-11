// Mocks generated by Mockito 5.4.4 from annotations
// in locall_app/test/src/data/repositories/theme_mode_repo_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:locall_app/src/data/datasources/theme_mode_local_datasrc.dart'
    as _i2;
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

/// A class which mocks [ThemeModeLocalDatasrc].
///
/// See the documentation for Mockito's code generation for more information.
class MockThemeModeLocalDatasrc extends _i1.Mock
    implements _i2.ThemeModeLocalDatasrc {
  MockThemeModeLocalDatasrc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> getCachedThemeData() => (super.noSuchMethod(
        Invocation.method(
          #getCachedThemeData,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<bool> getUseSystemTheme() => (super.noSuchMethod(
        Invocation.method(
          #getUseSystemTheme,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<void> cacheThemeData({required bool? mode}) => (super.noSuchMethod(
        Invocation.method(
          #cacheThemeData,
          [],
          {#mode: mode},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> cacheUseSystemTheme({required bool? useSystemTheme}) =>
      (super.noSuchMethod(
        Invocation.method(
          #cacheUseSystemTheme,
          [],
          {#useSystemTheme: useSystemTheme},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}