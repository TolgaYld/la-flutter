// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_banned', required: true)
  bool get isBanned => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted', required: true)
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin', required: true)
  bool get isAdmin => throw _privateConstructorUsedError;
  bool get official => throw _privateConstructorUsedError;
  List<ChannelModel> get channels => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get deviceType => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  List<PostModel>? get posts => throw _privateConstructorUsedError;
  List<StoryModel>? get storys => throw _privateConstructorUsedError;
  List<CommentModel>? get comments => throw _privateConstructorUsedError;
  List<ReportModel>? get reports => throw _privateConstructorUsedError;
  List<ReportModel>? get reporteds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      @JsonKey(name: 'is_banned', required: true) bool isBanned,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @JsonKey(name: 'is_admin', required: true) bool isAdmin,
      bool official,
      List<ChannelModel> channels,
      int distance,
      int points,
      List<double> coordinates,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime? createdAt,
      String? deviceType,
      String? deviceId,
      List<PostModel>? posts,
      List<StoryModel>? storys,
      List<CommentModel>? comments,
      List<ReportModel>? reports,
      List<ReportModel>? reporteds});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? isBanned = null,
    Object? isDeleted = null,
    Object? isAdmin = null,
    Object? official = null,
    Object? channels = null,
    Object? distance = null,
    Object? points = null,
    Object? coordinates = null,
    Object? createdAt = freezed,
    Object? deviceType = freezed,
    Object? deviceId = freezed,
    Object? posts = freezed,
    Object? storys = freezed,
    Object? comments = freezed,
    Object? reports = freezed,
    Object? reporteds = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      storys: freezed == storys
          ? _value.storys
          : storys // ignore: cast_nullable_to_non_nullable
              as List<StoryModel>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      reports: freezed == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>?,
      reporteds: freezed == reporteds
          ? _value.reporteds
          : reporteds // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      @JsonKey(name: 'is_banned', required: true) bool isBanned,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @JsonKey(name: 'is_admin', required: true) bool isAdmin,
      bool official,
      List<ChannelModel> channels,
      int distance,
      int points,
      List<double> coordinates,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime? createdAt,
      String? deviceType,
      String? deviceId,
      List<PostModel>? posts,
      List<StoryModel>? storys,
      List<CommentModel>? comments,
      List<ReportModel>? reports,
      List<ReportModel>? reporteds});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? isBanned = null,
    Object? isDeleted = null,
    Object? isAdmin = null,
    Object? official = null,
    Object? channels = null,
    Object? distance = null,
    Object? points = null,
    Object? coordinates = null,
    Object? createdAt = freezed,
    Object? deviceType = freezed,
    Object? deviceId = freezed,
    Object? posts = freezed,
    Object? storys = freezed,
    Object? comments = freezed,
    Object? reports = freezed,
    Object? reporteds = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      storys: freezed == storys
          ? _value._storys
          : storys // ignore: cast_nullable_to_non_nullable
              as List<StoryModel>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      reports: freezed == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>?,
      reporteds: freezed == reporteds
          ? _value._reporteds
          : reporteds // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {required this.id,
      required this.username,
      required this.email,
      @JsonKey(name: 'is_banned', required: true) required this.isBanned,
      @JsonKey(name: 'is_deleted', required: true) required this.isDeleted,
      @JsonKey(name: 'is_admin', required: true) required this.isAdmin,
      required this.official,
      required final List<ChannelModel> channels,
      required this.distance,
      required this.points,
      required final List<double> coordinates,
      @DateTimeConverter() @JsonKey(name: 'created_at') this.createdAt,
      this.deviceType,
      this.deviceId,
      final List<PostModel>? posts,
      final List<StoryModel>? storys,
      final List<CommentModel>? comments,
      final List<ReportModel>? reports,
      final List<ReportModel>? reporteds})
      : _channels = channels,
        _coordinates = coordinates,
        _posts = posts,
        _storys = storys,
        _comments = comments,
        _reports = reports,
        _reporteds = reporteds;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey(name: 'is_banned', required: true)
  final bool isBanned;
  @override
  @JsonKey(name: 'is_deleted', required: true)
  final bool isDeleted;
  @override
  @JsonKey(name: 'is_admin', required: true)
  final bool isAdmin;
  @override
  final bool official;
  final List<ChannelModel> _channels;
  @override
  List<ChannelModel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  final int distance;
  @override
  final int points;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final String? deviceType;
  @override
  final String? deviceId;
  final List<PostModel>? _posts;
  @override
  List<PostModel>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StoryModel>? _storys;
  @override
  List<StoryModel>? get storys {
    final value = _storys;
    if (value == null) return null;
    if (_storys is EqualUnmodifiableListView) return _storys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CommentModel>? _comments;
  @override
  List<CommentModel>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReportModel>? _reports;
  @override
  List<ReportModel>? get reports {
    final value = _reports;
    if (value == null) return null;
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReportModel>? _reporteds;
  @override
  List<ReportModel>? get reporteds {
    final value = _reporteds;
    if (value == null) return null;
    if (_reporteds is EqualUnmodifiableListView) return _reporteds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, isBanned: $isBanned, isDeleted: $isDeleted, isAdmin: $isAdmin, official: $official, channels: $channels, distance: $distance, points: $points, coordinates: $coordinates, createdAt: $createdAt, deviceType: $deviceType, deviceId: $deviceId, posts: $posts, storys: $storys, comments: $comments, reports: $reports, reporteds: $reporteds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.official, official) ||
                other.official == official) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._storys, _storys) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            const DeepCollectionEquality()
                .equals(other._reporteds, _reporteds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        email,
        isBanned,
        isDeleted,
        isAdmin,
        official,
        const DeepCollectionEquality().hash(_channels),
        distance,
        points,
        const DeepCollectionEquality().hash(_coordinates),
        createdAt,
        deviceType,
        deviceId,
        const DeepCollectionEquality().hash(_posts),
        const DeepCollectionEquality().hash(_storys),
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_reports),
        const DeepCollectionEquality().hash(_reporteds)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final String id,
      required final String username,
      required final String email,
      @JsonKey(name: 'is_banned', required: true) required final bool isBanned,
      @JsonKey(name: 'is_deleted', required: true)
      required final bool isDeleted,
      @JsonKey(name: 'is_admin', required: true) required final bool isAdmin,
      required final bool official,
      required final List<ChannelModel> channels,
      required final int distance,
      required final int points,
      required final List<double> coordinates,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
      final DateTime? createdAt,
      final String? deviceType,
      final String? deviceId,
      final List<PostModel>? posts,
      final List<StoryModel>? storys,
      final List<CommentModel>? comments,
      final List<ReportModel>? reports,
      final List<ReportModel>? reporteds}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(name: 'is_banned', required: true)
  bool get isBanned;
  @override
  @JsonKey(name: 'is_deleted', required: true)
  bool get isDeleted;
  @override
  @JsonKey(name: 'is_admin', required: true)
  bool get isAdmin;
  @override
  bool get official;
  @override
  List<ChannelModel> get channels;
  @override
  int get distance;
  @override
  int get points;
  @override
  List<double> get coordinates;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  String? get deviceType;
  @override
  String? get deviceId;
  @override
  List<PostModel>? get posts;
  @override
  List<StoryModel>? get storys;
  @override
  List<CommentModel>? get comments;
  @override
  List<ReportModel>? get reports;
  @override
  List<ReportModel>? get reporteds;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}