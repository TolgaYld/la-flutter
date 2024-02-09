// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['is_active', 'is_deleted', 'created_at'],
  );
  return _$CommentModelImpl(
    id: json['id'] as String,
    isActive: json['is_active'] as bool,
    isDeleted: json['is_deleted'] as bool,
    createdBy: UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
    createdAt: const DateTimeConverter().fromJson(json['created_at'] as String),
    type: $enumDecode(_$PostTypeEnumMap, json['type']),
    likes: (json['likes'] as List<dynamic>)
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    dislikes: (json['dislikes'] as List<dynamic>)
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    post: PostModel.fromJson(json['post'] as Map<String, dynamic>),
    text: json['text'] as String?,
    media: (json['media'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_deleted': instance.isDeleted,
      'created_by': instance.createdBy.toJson(),
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'type': _$PostTypeEnumMap[instance.type]!,
      'likes': instance.likes.map((e) => e.toJson()).toList(),
      'dislikes': instance.dislikes.map((e) => e.toJson()).toList(),
      'post': instance.post.toJson(),
      'text': instance.text,
      'media': instance.media,
    };

const _$PostTypeEnumMap = {
  PostType.public: 'PUBLIC',
  PostType.anonymous: 'ANONYMOUS',
};
