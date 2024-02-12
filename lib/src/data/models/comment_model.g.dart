// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: json['_id'] as String,
      isActive: json['is_active'] as bool,
      isDeleted: json['is_deleted'] as bool,
      createdBy: UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
      createdAt:
          const DateTimeConverter().fromJson(json['created_at'] as String),
      type: $enumDecode(_$PostTypeEnumMap, json['type']),
      post: PostModel.fromJson(json['post'] as Map<String, dynamic>),
      likes: (json['likes'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dislikes: (json['dislikes'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) {
  final val = <String, dynamic>{
    '_id': instance.id,
    'is_active': instance.isActive,
    'is_deleted': instance.isDeleted,
    'created_by': instance.createdBy.toJson(),
    'created_at': const DateTimeConverter().toJson(instance.createdAt),
    'type': _$PostTypeEnumMap[instance.type]!,
    'post': instance.post.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('likes', instance.likes?.map((e) => e.toJson()).toList());
  writeNotNull('dislikes', instance.dislikes?.map((e) => e.toJson()).toList());
  writeNotNull('text', instance.text);
  writeNotNull('media', instance.media);
  return val;
}

const _$PostTypeEnumMap = {
  PostType.public: 'PUBLIC',
  PostType.anonymous: 'ANONYMOUS',
};
