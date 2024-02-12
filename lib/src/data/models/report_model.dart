import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/utils/datetime_converter.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/channel_model.dart';
import 'package:locall_app/src/data/models/comment_model.dart';
import 'package:locall_app/src/data/models/post_model.dart';
import 'package:locall_app/src/data/models/story_model.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/report.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

@freezed
class ReportModel extends Report with _$ReportModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ReportModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'is_done') required bool isDone,
    @JsonKey(name: 'created_by') required UserModel createdBy,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    required String reason,
    @JsonKey(name: 'reported_user') UserModel? reportedUser,
    PostModel? post,
    CommentModel? comment,
    ChannelModel? channel,
    StoryModel? story,
    String? city,
    String? notesAboutReport,
  }) = _ReportModel;

  factory ReportModel.fromJson(DataMap json) => _$ReportModelFromJson(json);

  factory ReportModel.empty() => ReportModel(
        id: 'empty',
        reportedUser: UserModel.empty(),
        isDone: false,
        createdBy: UserModel.empty(),
        createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
        reason: 'empty',
      );

  factory ReportModel.fromEntity(Report report) => ReportModel(
        id: report.id,
        createdAt: report.createdAt,
        createdBy: UserModel.fromEntity(report.createdBy),
        channel: report.channel != null
            ? ChannelModel.fromEntity(
                report.channel!,
              )
            : null,
        city: report.city,
        isDone: report.isDone,
        reason: report.reason,
        reportedUser: report.reportedUser != null
            ? UserModel.fromEntity(
                report.reportedUser!,
              )
            : null,
        comment: report.comment != null
            ? CommentModel.fromEntity(
                report.comment!,
              )
            : null,
        notesAboutReport: report.notesAboutReport,
        post: report.post != null
            ? PostModel.fromEntity(
                report.post!,
              )
            : null,
        story: report.story != null
            ? StoryModel.fromEntity(
                report.story!,
              )
            : null,
      );
}
