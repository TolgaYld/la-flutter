import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/utils/datetime_converter.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/channel_model.dart';
import 'package:locall_app/src/data/models/comment_model.dart';
import 'package:locall_app/src/data/models/post_model.dart';
import 'package:locall_app/src/data/models/report_model.dart';
import 'package:locall_app/src/data/models/story_model.dart';
import 'package:locall_app/src/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel extends User with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    required String id,
    required String username,
    required String email,
    @JsonKey(name: 'is_banned', required: true) required bool isBanned,
    @JsonKey(name: 'is_deleted', required: true) required bool isDeleted,
    @JsonKey(name: 'is_admin', required: true) required bool isAdmin,
    required bool official,
    required List<ChannelModel> channels,
    required int distance,
    required int points,
    required List<double> coordinates,
    @DateTimeConverter() @JsonKey(name: 'created_at') DateTime? createdAt,
    String? deviceType,
    String? deviceId,
    List<PostModel>? posts,
    List<StoryModel>? storys,
    List<CommentModel>? comments,
    List<ReportModel>? reports,
    List<ReportModel>? reporteds,
  }) = _UserModel;

  factory UserModel.fromJson(DataMap json) => _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) => UserModel(
        id: user.id,
        isDeleted: user.isDeleted,
        createdAt: user.createdAt,
        channels: user.channels.map(ChannelModel.fromEntity).toList(),
        coordinates: user.coordinates,
        email: user.email,
        comments: user.comments
            ?.map(
              CommentModel.fromEntity,
            )
            .toList(),
        distance: user.distance,
        isAdmin: user.isAdmin,
        isBanned: user.isBanned,
        points: user.points,
        username: user.username,
        deviceId: user.deviceId,
        deviceType: user.deviceType,
        posts: user.posts
            ?.map(
              PostModel.fromEntity,
            )
            .toList(),
        reporteds: user.reporteds?.map(ReportModel.fromEntity).toList(),
        reports: user.reports?.map(ReportModel.fromEntity).toList(),
        storys: user.storys?.map(StoryModel.fromEntity).toList(),
        official: user.official,
      );
}
