// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['_id', 'is_done', 'created_at'],
  );
  return _$ReportModelImpl(
    id: json['_id'] as String,
    isDone: json['is_done'] as bool,
    createdBy: UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
    createdAt: const DateTimeConverter().fromJson(json['created_at'] as String),
    reason: json['reason'] as String,
    reportedUser: json['reported_user'] == null
        ? null
        : UserModel.fromJson(json['reported_user'] as Map<String, dynamic>),
    post: json['post'] == null
        ? null
        : PostModel.fromJson(json['post'] as Map<String, dynamic>),
    comment: json['comment'] == null
        ? null
        : CommentModel.fromJson(json['comment'] as Map<String, dynamic>),
    channel: json['channel'] == null
        ? null
        : ChannelModel.fromJson(json['channel'] as Map<String, dynamic>),
    story: json['story'] == null
        ? null
        : StoryModel.fromJson(json['story'] as Map<String, dynamic>),
    city: json['city'] as String?,
    notesAboutReport: json['notesAboutReport'] as String?,
  );
}

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) {
  final val = <String, dynamic>{
    '_id': instance.id,
    'is_done': instance.isDone,
    'created_by': instance.createdBy.toJson(),
    'created_at': const DateTimeConverter().toJson(instance.createdAt),
    'reason': instance.reason,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reported_user', instance.reportedUser?.toJson());
  writeNotNull('post', instance.post?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('channel', instance.channel?.toJson());
  writeNotNull('story', instance.story?.toJson());
  writeNotNull('city', instance.city);
  writeNotNull('notesAboutReport', instance.notesAboutReport);
  return val;
}
