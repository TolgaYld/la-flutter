// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['is_active', 'is_deleted', 'created_at'],
  );
  return _$PostModelImpl(
    id: json['id'] as String,
    isActive: json['is_active'] as bool,
    isDeleted: json['is_deleted'] as bool,
    createdBy: UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
    createdAt: const DateTimeConverter().fromJson(json['created_at'] as String),
    coordinates: (json['coordinates'] as List<dynamic>)
        .map((e) => (e as num).toDouble())
        .toList(),
    type: $enumDecode(_$PostTypeEnumMap, json['type']),
    channel: ChannelModel.fromJson(json['channel'] as Map<String, dynamic>),
    likes: (json['likes'] as List<dynamic>)
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    dislikes: (json['dislikes'] as List<dynamic>)
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    text: json['text'] as String?,
    media: (json['media'] as List<dynamic>?)?.map((e) => e as String).toList(),
    city: json['city'] as String?,
    comments: (json['comments'] as List<dynamic>?)
        ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_deleted': instance.isDeleted,
      'created_by': instance.createdBy.toJson(),
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'coordinates': instance.coordinates,
      'type': _$PostTypeEnumMap[instance.type]!,
      'channel': instance.channel.toJson(),
      'likes': instance.likes.map((e) => e.toJson()).toList(),
      'dislikes': instance.dislikes.map((e) => e.toJson()).toList(),
      'text': instance.text,
      'media': instance.media,
      'city': instance.city,
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
    };

const _$PostTypeEnumMap = {
  PostType.public: 'PUBLIC',
  PostType.anonymous: 'ANONYMOUS',
};
