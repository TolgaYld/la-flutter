// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryModelImpl _$$StoryModelImplFromJson(Map<String, dynamic> json) =>
    _$StoryModelImpl(
      id: json['_id'] as String,
      isActive: json['is_active'] as bool,
      isDeleted: json['is_deleted'] as bool,
      createdAt:
          const DateTimeConverter().fromJson(json['created_at'] as String),
      createdBy: UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      type: $enumDecode(_$PostTypeEnumMap, json['type']),
      channels: (json['channels'] as List<dynamic>)
          .map((e) => ChannelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      likes: (json['likes'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dislikes: (json['dislikes'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList(),
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$StoryModelImplToJson(_$StoryModelImpl instance) {
  final val = <String, dynamic>{
    '_id': instance.id,
    'is_active': instance.isActive,
    'is_deleted': instance.isDeleted,
    'created_at': const DateTimeConverter().toJson(instance.createdAt),
    'created_by': instance.createdBy.toJson(),
    'location': instance.location.toJson(),
    'type': _$PostTypeEnumMap[instance.type]!,
    'channels': instance.channels.map((e) => e.toJson()).toList(),
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
  writeNotNull('city', instance.city);
  return val;
}

const _$PostTypeEnumMap = {
  PostType.public: 'PUBLIC',
  PostType.anonymous: 'ANONYMOUS',
};
