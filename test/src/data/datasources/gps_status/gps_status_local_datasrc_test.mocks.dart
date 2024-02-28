// Mocks generated by Mockito 5.4.4 from annotations
// in locall_app/test/src/data/datasources/gps_status/gps_status_local_datasrc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:geolocator_platform_interface/src/enums/enums.dart' as _i5;
import 'package:geolocator_platform_interface/src/geolocator_platform_interface.dart'
    as _i3;
import 'package:geolocator_platform_interface/src/models/models.dart' as _i2;
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

class _FakePosition_0 extends _i1.SmartFake implements _i2.Position {
  _FakePosition_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GeolocatorPlatform].
///
/// See the documentation for Mockito's code generation for more information.
class MockGeolocatorPlatform extends _i1.Mock
    implements _i3.GeolocatorPlatform {
  MockGeolocatorPlatform() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i5.LocationPermission> checkPermission() => (super.noSuchMethod(
        Invocation.method(
          #checkPermission,
          [],
        ),
        returnValue: _i4.Future<_i5.LocationPermission>.value(
            _i5.LocationPermission.denied),
      ) as _i4.Future<_i5.LocationPermission>);

  @override
  _i4.Future<_i5.LocationPermission> requestPermission() => (super.noSuchMethod(
        Invocation.method(
          #requestPermission,
          [],
        ),
        returnValue: _i4.Future<_i5.LocationPermission>.value(
            _i5.LocationPermission.denied),
      ) as _i4.Future<_i5.LocationPermission>);

  @override
  _i4.Future<bool> isLocationServiceEnabled() => (super.noSuchMethod(
        Invocation.method(
          #isLocationServiceEnabled,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<_i2.Position?> getLastKnownPosition(
          {bool? forceLocationManager = false}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getLastKnownPosition,
          [],
          {#forceLocationManager: forceLocationManager},
        ),
        returnValue: _i4.Future<_i2.Position?>.value(),
      ) as _i4.Future<_i2.Position?>);

  @override
  _i4.Future<_i2.Position> getCurrentPosition(
          {_i2.LocationSettings? locationSettings}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCurrentPosition,
          [],
          {#locationSettings: locationSettings},
        ),
        returnValue: _i4.Future<_i2.Position>.value(_FakePosition_0(
          this,
          Invocation.method(
            #getCurrentPosition,
            [],
            {#locationSettings: locationSettings},
          ),
        )),
      ) as _i4.Future<_i2.Position>);

  @override
  _i4.Stream<_i5.ServiceStatus> getServiceStatusStream() => (super.noSuchMethod(
        Invocation.method(
          #getServiceStatusStream,
          [],
        ),
        returnValue: _i4.Stream<_i5.ServiceStatus>.empty(),
      ) as _i4.Stream<_i5.ServiceStatus>);

  @override
  _i4.Stream<_i2.Position> getPositionStream(
          {_i2.LocationSettings? locationSettings}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPositionStream,
          [],
          {#locationSettings: locationSettings},
        ),
        returnValue: _i4.Stream<_i2.Position>.empty(),
      ) as _i4.Stream<_i2.Position>);

  @override
  _i4.Future<_i5.LocationAccuracyStatus> requestTemporaryFullAccuracy(
          {required String? purposeKey}) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestTemporaryFullAccuracy,
          [],
          {#purposeKey: purposeKey},
        ),
        returnValue: _i4.Future<_i5.LocationAccuracyStatus>.value(
            _i5.LocationAccuracyStatus.reduced),
      ) as _i4.Future<_i5.LocationAccuracyStatus>);

  @override
  _i4.Future<_i5.LocationAccuracyStatus> getLocationAccuracy() =>
      (super.noSuchMethod(
        Invocation.method(
          #getLocationAccuracy,
          [],
        ),
        returnValue: _i4.Future<_i5.LocationAccuracyStatus>.value(
            _i5.LocationAccuracyStatus.reduced),
      ) as _i4.Future<_i5.LocationAccuracyStatus>);

  @override
  _i4.Future<bool> openAppSettings() => (super.noSuchMethod(
        Invocation.method(
          #openAppSettings,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> openLocationSettings() => (super.noSuchMethod(
        Invocation.method(
          #openLocationSettings,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  double distanceBetween(
    double? startLatitude,
    double? startLongitude,
    double? endLatitude,
    double? endLongitude,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #distanceBetween,
          [
            startLatitude,
            startLongitude,
            endLatitude,
            endLongitude,
          ],
        ),
        returnValue: 0.0,
      ) as double);

  @override
  double bearingBetween(
    double? startLatitude,
    double? startLongitude,
    double? endLatitude,
    double? endLongitude,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #bearingBetween,
          [
            startLatitude,
            startLongitude,
            endLatitude,
            endLongitude,
          ],
        ),
        returnValue: 0.0,
      ) as double);
}
