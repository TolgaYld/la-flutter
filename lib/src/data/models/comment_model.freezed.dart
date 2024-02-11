// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active', required: true)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted', required: true)
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  UserModel get createdBy => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  PostType get type => throw _privateConstructorUsedError;
  List<UserModel> get likes => throw _privateConstructorUsedError;
  List<UserModel> get dislikes => throw _privateConstructorUsedError;
  PostModel get post => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  List<String>? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active', required: true) bool isActive,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @JsonKey(name: 'created_by') UserModel createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      PostType type,
      List<UserModel> likes,
      List<UserModel> dislikes,
      PostModel post,
      String? text,
      List<String>? media});

  $UserModelCopyWith<$Res> get createdBy;
  $PostModelCopyWith<$Res> get post;
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

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
    Object? createdBy = null,
    Object? createdAt = null,
    Object? type = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? post = null,
    Object? text = freezed,
    Object? media = freezed,
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModel,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
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
  $PostModelCopyWith<$Res> get post {
    return $PostModelCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active', required: true) bool isActive,
      @JsonKey(name: 'is_deleted', required: true) bool isDeleted,
      @JsonKey(name: 'created_by') UserModel createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      DateTime createdAt,
      PostType type,
      List<UserModel> likes,
      List<UserModel> dislikes,
      PostModel post,
      String? text,
      List<String>? media});

  @override
  $UserModelCopyWith<$Res> get createdBy;
  @override
  $PostModelCopyWith<$Res> get post;
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? isDeleted = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? type = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? post = null,
    Object? text = freezed,
    Object? media = freezed,
  }) {
    return _then(_$CommentModelImpl(
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      dislikes: null == dislikes
          ? _value._dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModel,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CommentModelImpl implements _CommentModel {
  _$CommentModelImpl(
      {required this.id,
      @JsonKey(name: 'is_active', required: true) required this.isActive,
      @JsonKey(name: 'is_deleted', required: true) required this.isDeleted,
      @JsonKey(name: 'created_by') required this.createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required this.createdAt,
      required this.type,
      required final List<UserModel> likes,
      required final List<UserModel> dislikes,
      required this.post,
      this.text,
      final List<String>? media})
      : _likes = likes,
        _dislikes = dislikes,
        _media = media;

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'is_active', required: true)
  final bool isActive;
  @override
  @JsonKey(name: 'is_deleted', required: true)
  final bool isDeleted;
  @override
  @JsonKey(name: 'created_by')
  final UserModel createdBy;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  final DateTime createdAt;
  @override
  final PostType type;
  final List<UserModel> _likes;
  @override
  List<UserModel> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  final List<UserModel> _dislikes;
  @override
  List<UserModel> get dislikes {
    if (_dislikes is EqualUnmodifiableListView) return _dislikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikes);
  }

  @override
  final PostModel post;
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
  String toString() {
    return 'CommentModel(id: $id, isActive: $isActive, isDeleted: $isDeleted, createdBy: $createdBy, createdAt: $createdAt, type: $type, likes: $likes, dislikes: $dislikes, post: $post, text: $text, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._dislikes, _dislikes) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isActive,
      isDeleted,
      createdBy,
      createdAt,
      type,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_dislikes),
      post,
      text,
      const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  factory _CommentModel(
      {required final String id,
      @JsonKey(name: 'is_active', required: true) required final bool isActive,
      @JsonKey(name: 'is_deleted', required: true)
      required final bool isDeleted,
      @JsonKey(name: 'created_by') required final UserModel createdBy,
      @DateTimeConverter()
      @JsonKey(name: 'created_at', required: true)
      required final DateTime createdAt,
      required final PostType type,
      required final List<UserModel> likes,
      required final List<UserModel> dislikes,
      required final PostModel post,
      final String? text,
      final List<String>? media}) = _$CommentModelImpl;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'is_active', required: true)
  bool get isActive;
  @override
  @JsonKey(name: 'is_deleted', required: true)
  bool get isDeleted;
  @override
  @JsonKey(name: 'created_by')
  UserModel get createdBy;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at', required: true)
  DateTime get createdAt;
  @override
  PostType get type;
  @override
  List<UserModel> get likes;
  @override
  List<UserModel> get dislikes;
  @override
  PostModel get post;
  @override
  String? get text;
  @override
  List<String>? get media;
  @override
  @JsonKey(ignore: true)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}