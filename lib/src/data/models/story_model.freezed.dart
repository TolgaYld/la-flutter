// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoryModel _$StoryModelFromJson(Map<String, dynamic> json) {
  return _StoryModel.fromJson(json);
}

/// @nodoc
mixin _$StoryModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active', required: true)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted', required: true)
  bool get isDeleted => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  UserModel get createdBy => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;
  PostType get type => throw _privateConstructorUsedError;
  List<ChannelModel> get channels => throw _privateConstructorUsedError;
  List<UserModel>? get likes => throw _privateConstructorUsedError;
  List<UserModel>? get dislikes => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  List<String>? get media => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryModelCopyWith<StoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryModelCopyWith<$Res> {
  factory $StoryModelCopyWith(
          StoryModel value, $Res Function(StoryModel) then) =
      _$StoryModelCopyWithImpl<$Res, StoryModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active', required: true) bool isActive,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      @JsonKey(name: 'created_by') UserModel createdBy,
      List<double> coordinates,
      PostType type,
      List<ChannelModel> channels,
      List<UserModel>? likes,
      List<UserModel>? dislikes,
      String? text,
      List<String>? media,
      String? city});

  $UserModelCopyWith<$Res> get createdBy;
}

/// @nodoc
class _$StoryModelCopyWithImpl<$Res, $Val extends StoryModel>
    implements $StoryModelCopyWith<$Res> {
  _$StoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? coordinates = null,
    Object? type = null,
    Object? channels = null,
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? text = freezed,
    Object? media = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      dislikes: freezed == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get createdBy {
    return $UserModelCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoryModelImplCopyWith<$Res>
    implements $StoryModelCopyWith<$Res> {
  factory _$$StoryModelImplCopyWith(
          _$StoryModelImpl value, $Res Function(_$StoryModelImpl) then) =
      __$$StoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active', required: true) bool isActive,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      @JsonKey(name: 'created_by') UserModel createdBy,
      List<double> coordinates,
      PostType type,
      List<ChannelModel> channels,
      List<UserModel>? likes,
      List<UserModel>? dislikes,
      String? text,
      List<String>? media,
      String? city});

  @override
  $UserModelCopyWith<$Res> get createdBy;
}

/// @nodoc
class __$$StoryModelImplCopyWithImpl<$Res>
    extends _$StoryModelCopyWithImpl<$Res, _$StoryModelImpl>
    implements _$$StoryModelImplCopyWith<$Res> {
  __$$StoryModelImplCopyWithImpl(
      _$StoryModelImpl _value, $Res Function(_$StoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? coordinates = null,
    Object? type = null,
    Object? channels = null,
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? text = freezed,
    Object? media = freezed,
    Object? city = freezed,
  }) {
    return _then(_$StoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>,
      likes: freezed == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      dislikes: freezed == dislikes
          ? _value._dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$StoryModelImpl implements _StoryModel {
  _$StoryModelImpl(
      {required this.id,
      @JsonKey(name: 'is_active', required: true) required this.isActive,
      @JsonKey(name: 'is_deleted', required: true) required this.isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      required final List<double> coordinates,
      required this.type,
      required final List<ChannelModel> channels,
      final List<UserModel>? likes,
      final List<UserModel>? dislikes,
      this.text,
      final List<String>? media,
      this.city})
      : _coordinates = coordinates,
        _channels = channels,
        _likes = likes,
        _dislikes = dislikes,
        _media = media;

  factory _$StoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'is_active', required: true)
  final bool isActive;
  @override
  @JsonKey(name: 'is_deleted', required: true)
  final bool isDeleted;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'created_by')
  final UserModel createdBy;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  final PostType type;
  final List<ChannelModel> _channels;
  @override
  List<ChannelModel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  final List<UserModel>? _likes;
  @override
  List<UserModel>? get likes {
    final value = _likes;
    if (value == null) return null;
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserModel>? _dislikes;
  @override
  List<UserModel>? get dislikes {
    final value = _dislikes;
    if (value == null) return null;
    if (_dislikes is EqualUnmodifiableListView) return _dislikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;
  final List<String>? _media;
  @override
  List<String>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? city;

  @override
  String toString() {
    return 'StoryModel(id: $id, isActive: $isActive, isDeleted: $isDeleted, createdAt: $createdAt, createdBy: $createdBy, coordinates: $coordinates, type: $type, channels: $channels, likes: $likes, dislikes: $dislikes, text: $text, media: $media, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._dislikes, _dislikes) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isActive,
      isDeleted,
      createdAt,
      createdBy,
      const DeepCollectionEquality().hash(_coordinates),
      type,
      const DeepCollectionEquality().hash(_channels),
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_dislikes),
      text,
      const DeepCollectionEquality().hash(_media),
      city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryModelImplCopyWith<_$StoryModelImpl> get copyWith =>
      __$$StoryModelImplCopyWithImpl<_$StoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryModelImplToJson(
      this,
    );
  }
}

abstract class _StoryModel implements StoryModel {
  factory _StoryModel(
      {required final String id,
      @JsonKey(name: 'is_active', required: true) required final bool isActive,
      @JsonKey(name: 'is_deleted', required: true)
      required final bool isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required final DateTime createdAt,
      @JsonKey(name: 'created_by') required final UserModel createdBy,
      required final List<double> coordinates,
      required final PostType type,
      required final List<ChannelModel> channels,
      final List<UserModel>? likes,
      final List<UserModel>? dislikes,
      final String? text,
      final List<String>? media,
      final String? city}) = _$StoryModelImpl;

  factory _StoryModel.fromJson(Map<String, dynamic> json) =
      _$StoryModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'is_active', required: true)
  bool get isActive;
  @override
  @JsonKey(name: 'is_deleted', required: true)
  bool get isDeleted;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'created_by')
  UserModel get createdBy;
  @override
  List<double> get coordinates;
  @override
  PostType get type;
  @override
  List<ChannelModel> get channels;
  @override
  List<UserModel>? get likes;
  @override
  List<UserModel>? get dislikes;
  @override
  String? get text;
  @override
  List<String>? get media;
  @override
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$StoryModelImplCopyWith<_$StoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
