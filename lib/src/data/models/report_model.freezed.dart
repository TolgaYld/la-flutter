// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
mixin _$ReportModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reported_user', required: true)
  UserModel get reportedUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_done', required: true)
  bool get isDone => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  UserModel get createdBy => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  PostModel? get post => throw _privateConstructorUsedError;
  CommentModel? get comment => throw _privateConstructorUsedError;
  ChannelModel? get channel => throw _privateConstructorUsedError;
  StoryModel? get story => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get notesAboutReport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) then) =
      _$ReportModelCopyWithImpl<$Res, ReportModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'reported_user', required: true) UserModel reportedUser,
      @JsonKey(name: 'is_done', required: true) bool isDone,
      @JsonKey(name: 'created_by') UserModel createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      String reason,
      PostModel? post,
      CommentModel? comment,
      ChannelModel? channel,
      StoryModel? story,
      String? city,
      String? notesAboutReport});

  $UserModelCopyWith<$Res> get reportedUser;
  $UserModelCopyWith<$Res> get createdBy;
  $PostModelCopyWith<$Res>? get post;
  $CommentModelCopyWith<$Res>? get comment;
  $ChannelModelCopyWith<$Res>? get channel;
  $StoryModelCopyWith<$Res>? get story;
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res, $Val extends ReportModel>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reportedUser = null,
    Object? isDone = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? reason = null,
    Object? post = freezed,
    Object? comment = freezed,
    Object? channel = freezed,
    Object? story = freezed,
    Object? city = freezed,
    Object? notesAboutReport = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reportedUser: null == reportedUser
          ? _value.reportedUser
          : reportedUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as StoryModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      notesAboutReport: freezed == notesAboutReport
          ? _value.notesAboutReport
          : notesAboutReport // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get reportedUser {
    return $UserModelCopyWith<$Res>(_value.reportedUser, (value) {
      return _then(_value.copyWith(reportedUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get createdBy {
    return $UserModelCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostModelCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $CommentModelCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelModelCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $ChannelModelCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryModelCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryModelCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportModelImplCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$ReportModelImplCopyWith(
          _$ReportModelImpl value, $Res Function(_$ReportModelImpl) then) =
      __$$ReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'reported_user', required: true) UserModel reportedUser,
      @JsonKey(name: 'is_done', required: true) bool isDone,
      @JsonKey(name: 'created_by') UserModel createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      String reason,
      PostModel? post,
      CommentModel? comment,
      ChannelModel? channel,
      StoryModel? story,
      String? city,
      String? notesAboutReport});

  @override
  $UserModelCopyWith<$Res> get reportedUser;
  @override
  $UserModelCopyWith<$Res> get createdBy;
  @override
  $PostModelCopyWith<$Res>? get post;
  @override
  $CommentModelCopyWith<$Res>? get comment;
  @override
  $ChannelModelCopyWith<$Res>? get channel;
  @override
  $StoryModelCopyWith<$Res>? get story;
}

/// @nodoc
class __$$ReportModelImplCopyWithImpl<$Res>
    extends _$ReportModelCopyWithImpl<$Res, _$ReportModelImpl>
    implements _$$ReportModelImplCopyWith<$Res> {
  __$$ReportModelImplCopyWithImpl(
      _$ReportModelImpl _value, $Res Function(_$ReportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reportedUser = null,
    Object? isDone = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? reason = null,
    Object? post = freezed,
    Object? comment = freezed,
    Object? channel = freezed,
    Object? story = freezed,
    Object? city = freezed,
    Object? notesAboutReport = freezed,
  }) {
    return _then(_$ReportModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reportedUser: null == reportedUser
          ? _value.reportedUser
          : reportedUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as StoryModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      notesAboutReport: freezed == notesAboutReport
          ? _value.notesAboutReport
          : notesAboutReport // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ReportModelImpl implements _ReportModel {
  _$ReportModelImpl(
      {required this.id,
      @JsonKey(name: 'reported_user', required: true)
      required this.reportedUser,
      @JsonKey(name: 'is_done', required: true) required this.isDone,
      @JsonKey(name: 'created_by') required this.createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required this.createdAt,
      required this.reason,
      this.post,
      this.comment,
      this.channel,
      this.story,
      this.city,
      this.notesAboutReport});

  factory _$ReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'reported_user', required: true)
  final UserModel reportedUser;
  @override
  @JsonKey(name: 'is_done', required: true)
  final bool isDone;
  @override
  @JsonKey(name: 'created_by')
  final UserModel createdBy;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  final DateTime createdAt;
  @override
  final String reason;
  @override
  final PostModel? post;
  @override
  final CommentModel? comment;
  @override
  final ChannelModel? channel;
  @override
  final StoryModel? story;
  @override
  final String? city;
  @override
  final String? notesAboutReport;

  @override
  String toString() {
    return 'ReportModel(id: $id, reportedUser: $reportedUser, isDone: $isDone, createdBy: $createdBy, createdAt: $createdAt, reason: $reason, post: $post, comment: $comment, channel: $channel, story: $story, city: $city, notesAboutReport: $notesAboutReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reportedUser, reportedUser) ||
                other.reportedUser == reportedUser) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.notesAboutReport, notesAboutReport) ||
                other.notesAboutReport == notesAboutReport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reportedUser,
      isDone,
      createdBy,
      createdAt,
      reason,
      post,
      comment,
      channel,
      story,
      city,
      notesAboutReport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      __$$ReportModelImplCopyWithImpl<_$ReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportModelImplToJson(
      this,
    );
  }
}

abstract class _ReportModel implements ReportModel {
  factory _ReportModel(
      {required final String id,
      @JsonKey(name: 'reported_user', required: true)
      required final UserModel reportedUser,
      @JsonKey(name: 'is_done', required: true) required final bool isDone,
      @JsonKey(name: 'created_by') required final UserModel createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required final DateTime createdAt,
      required final String reason,
      final PostModel? post,
      final CommentModel? comment,
      final ChannelModel? channel,
      final StoryModel? story,
      final String? city,
      final String? notesAboutReport}) = _$ReportModelImpl;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$ReportModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'reported_user', required: true)
  UserModel get reportedUser;
  @override
  @JsonKey(name: 'is_done', required: true)
  bool get isDone;
  @override
  @JsonKey(name: 'created_by')
  UserModel get createdBy;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  DateTime get createdAt;
  @override
  String get reason;
  @override
  PostModel? get post;
  @override
  CommentModel? get comment;
  @override
  ChannelModel? get channel;
  @override
  StoryModel? get story;
  @override
  String? get city;
  @override
  String? get notesAboutReport;
  @override
  @JsonKey(ignore: true)
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
