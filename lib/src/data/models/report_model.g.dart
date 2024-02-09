// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['reported_user', 'is_done', 'created_at'],
  );
  return _$ReportModelImpl(
    id: json['id'] as String,
    reportedUser:
        UserModel.fromJson(json['reported_user'] as Map<String, dynamic>),
    isDone: json['is_done'] as bool,
    createdBy: UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
    createdAt: const DateTimeConverter().fromJson(json['created_at'] as String),
    reason: json['reason'] as String,
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

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reported_user': instance.reportedUser.toJson(),
      'is_done': instance.isDone,
      'created_by': instance.createdBy.toJson(),
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'reason': instance.reason,
      'post': instance.post?.toJson(),
      'comment': instance.comment?.toJson(),
      'channel': instance.channel?.toJson(),
      'story': instance.story?.toJson(),
      'city': instance.city,
      'notesAboutReport': instance.notesAboutReport,
    };
