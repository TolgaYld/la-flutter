// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelModelImpl _$$ChannelModelImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['_id', 'is_active', 'is_deleted', 'created_at'],
  );
  return _$ChannelModelImpl(
    id: json['_id'] as String,
    name: json['name'] as String,
    isActive: json['is_active'] as bool,
    isDeleted: json['is_deleted'] as bool,
    createdAt: const DateTimeConverter().fromJson(json['created_at'] as String),
    subscriptions: (json['subscriptions'] as List<dynamic>?)
        ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdBy: json['created_by'] == null
        ? null
        : UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
    posts: (json['posts'] as List<dynamic>?)
        ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    storys: (json['storys'] as List<dynamic>?)
        ?.map((e) => StoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$$ChannelModelImplToJson(_$ChannelModelImpl instance) {
  final val = <String, dynamic>{
    '_id': instance.id,
    'name': instance.name,
    'is_active': instance.isActive,
    'is_deleted': instance.isDeleted,
    'created_at': const DateTimeConverter().toJson(instance.createdAt),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'subscriptions', instance.subscriptions?.map((e) => e.toJson()).toList());
  writeNotNull('created_by', instance.createdBy?.toJson());
  writeNotNull('posts', instance.posts?.map((e) => e.toJson()).toList());
  writeNotNull('storys', instance.storys?.map((e) => e.toJson()).toList());
  return val;
}
