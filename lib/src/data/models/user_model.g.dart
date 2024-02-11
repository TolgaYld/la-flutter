// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['is_banned', 'is_deleted', 'is_admin'],
  );
  return _$UserModelImpl(
    id: json['id'] as String,
    username: json['username'] as String,
    email: json['email'] as String,
    isBanned: json['is_banned'] as bool,
    isDeleted: json['is_deleted'] as bool,
    isAdmin: json['is_admin'] as bool,
    official: json['official'] as bool,
    channels: (json['channels'] as List<dynamic>)
        .map((e) => ChannelModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    distance: json['distance'] as int,
    points: json['points'] as int,
    coordinates: (json['coordinates'] as List<dynamic>)
        .map((e) => (e as num).toDouble())
        .toList(),
    createdAt: _$JsonConverterFromJson<String, DateTime>(
        json['created_at'], const DateTimeConverter().fromJson),
    deviceType: json['deviceType'] as String?,
    deviceId: json['deviceId'] as String?,
    posts: (json['posts'] as List<dynamic>?)
        ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    storys: (json['storys'] as List<dynamic>?)
        ?.map((e) => StoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    comments: (json['comments'] as List<dynamic>?)
        ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    reports: (json['reports'] as List<dynamic>?)
        ?.map((e) => ReportModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    reporteds: (json['reporteds'] as List<dynamic>?)
        ?.map((e) => ReportModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'is_banned': instance.isBanned,
      'is_deleted': instance.isDeleted,
      'is_admin': instance.isAdmin,
      'official': instance.official,
      'channels': instance.channels.map((e) => e.toJson()).toList(),
      'distance': instance.distance,
      'points': instance.points,
      'coordinates': instance.coordinates,
      'created_at': _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeConverter().toJson),
      'deviceType': instance.deviceType,
      'deviceId': instance.deviceId,
      'posts': instance.posts?.map((e) => e.toJson()).toList(),
      'storys': instance.storys?.map((e) => e.toJson()).toList(),
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
      'reports': instance.reports?.map((e) => e.toJson()).toList(),
      'reporteds': instance.reporteds?.map((e) => e.toJson()).toList(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);