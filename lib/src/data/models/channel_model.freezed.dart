// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) {
  return _ChannelModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active', required: true)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted', required: true)
  bool get isDeleted => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<UserModel>? get subscriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  UserModel? get createdBy => throw _privateConstructorUsedError;
  List<PostModel>? get posts => throw _privateConstructorUsedError;
  List<StoryModel>? get storys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelModelCopyWith<ChannelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelModelCopyWith<$Res> {
  factory $ChannelModelCopyWith(
          ChannelModel value, $Res Function(ChannelModel) then) =
      _$ChannelModelCopyWithImpl<$Res, ChannelModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'is_active', required: true) bool isActive,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      List<UserModel>? subscriptions,
      @JsonKey(name: 'created_by') UserModel? createdBy,
      List<PostModel>? posts,
      List<StoryModel>? storys});

  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$ChannelModelCopyWithImpl<$Res, $Val extends ChannelModel>
    implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? subscriptions = freezed,
    Object? createdBy = freezed,
    Object? posts = freezed,
    Object? storys = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      subscriptions: freezed == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      storys: freezed == storys
          ? _value.storys
          : storys // ignore: cast_nullable_to_non_nullable
              as List<StoryModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelModelImplCopyWith<$Res>
    implements $ChannelModelCopyWith<$Res> {
  factory _$$ChannelModelImplCopyWith(
          _$ChannelModelImpl value, $Res Function(_$ChannelModelImpl) then) =
      __$$ChannelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'is_active', required: true) bool isActive,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      List<UserModel>? subscriptions,
      @JsonKey(name: 'created_by') UserModel? createdBy,
      List<PostModel>? posts,
      List<StoryModel>? storys});

  @override
  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$ChannelModelImplCopyWithImpl<$Res>
    extends _$ChannelModelCopyWithImpl<$Res, _$ChannelModelImpl>
    implements _$$ChannelModelImplCopyWith<$Res> {
  __$$ChannelModelImplCopyWithImpl(
      _$ChannelModelImpl _value, $Res Function(_$ChannelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? subscriptions = freezed,
    Object? createdBy = freezed,
    Object? posts = freezed,
    Object? storys = freezed,
  }) {
    return _then(_$ChannelModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      subscriptions: freezed == subscriptions
          ? _value._subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      storys: freezed == storys
          ? _value._storys
          : storys // ignore: cast_nullable_to_non_nullable
              as List<StoryModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ChannelModelImpl implements _ChannelModel {
  _$ChannelModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'is_active', required: true) required this.isActive,
      @JsonKey(name: 'is_deleted', required: true) required this.isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required this.createdAt,
      final List<UserModel>? subscriptions,
      @JsonKey(name: 'created_by') this.createdBy,
      final List<PostModel>? posts,
      final List<StoryModel>? storys})
      : _subscriptions = subscriptions,
        _posts = posts,
        _storys = storys;

  factory _$ChannelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
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
  final List<UserModel>? _subscriptions;
  @override
  List<UserModel>? get subscriptions {
    final value = _subscriptions;
    if (value == null) return null;
    if (_subscriptions is EqualUnmodifiableListView) return _subscriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_by')
  final UserModel? createdBy;
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

  @override
  String toString() {
    return 'ChannelModel(id: $id, name: $name, isActive: $isActive, isDeleted: $isDeleted, createdAt: $createdAt, subscriptions: $subscriptions, createdBy: $createdBy, posts: $posts, storys: $storys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._subscriptions, _subscriptions) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._storys, _storys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isActive,
      isDeleted,
      createdAt,
      const DeepCollectionEquality().hash(_subscriptions),
      createdBy,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_storys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelModelImplCopyWith<_$ChannelModelImpl> get copyWith =>
      __$$ChannelModelImplCopyWithImpl<_$ChannelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelModelImplToJson(
      this,
    );
  }
}

abstract class _ChannelModel implements ChannelModel {
  factory _ChannelModel(
      {required final String id,
      required final String name,
      @JsonKey(name: 'is_active', required: true) required final bool isActive,
      @JsonKey(name: 'is_deleted', required: true)
      required final bool isDeleted,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required final DateTime createdAt,
      final List<UserModel>? subscriptions,
      @JsonKey(name: 'created_by') final UserModel? createdBy,
      final List<PostModel>? posts,
      final List<StoryModel>? storys}) = _$ChannelModelImpl;

  factory _ChannelModel.fromJson(Map<String, dynamic> json) =
      _$ChannelModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
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
  List<UserModel>? get subscriptions;
  @override
  @JsonKey(name: 'created_by')
  UserModel? get createdBy;
  @override
  List<PostModel>? get posts;
  @override
  List<StoryModel>? get storys;
  @override
  @JsonKey(ignore: true)
  _$$ChannelModelImplCopyWith<_$ChannelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
