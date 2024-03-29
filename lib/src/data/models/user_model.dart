import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/core/utils/datetime_converter.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/channel_model.dart';
import 'package:locall_app/src/data/models/comment_model.dart';
import 'package:locall_app/src/data/models/location_model.dart';
import 'package:locall_app/src/data/models/post_model.dart';
import 'package:locall_app/src/data/models/report_model.dart';
import 'package:locall_app/src/data/models/story_model.dart';
import 'package:locall_app/src/data/models/token_model.dart';
import 'package:locall_app/src/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel extends User with _$UserModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory UserModel({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String email,
    @JsonKey(name: 'is_banned') required bool isBanned,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @JsonKey(name: 'is_admin') required bool isAdmin,
    required bool official,
    required int distance,
    required int points,
    required LocationModel location,
    required AuthWithProvider provider,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime? createdAt,
    @JsonKey(name: 'auto_generated_username')
    required bool autoGeneratedUsername,
    @JsonKey(name: 'username_change_counter')
    required int usernameChangeCounter,
    List<ChannelModel>? channels,
    @JsonKey(name: 'device_type') String? deviceType,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'provider_id') String? providerId,
    List<PostModel>? posts,
    List<StoryModel>? storys,
    List<CommentModel>? comments,
    List<ReportModel>? reports,
    List<ReportModel>? reporteds,
    TokenModel? tokens,
  }) = _UserModel;

  factory UserModel.fromJson(DataMap json) => _$UserModelFromJson(json);

  factory UserModel.empty() => UserModel(
        id: 'empty',
        username: 'empty',
        email: 'test123@test.com',
        isAdmin: false,
        isBanned: false,
        isDeleted: false,
        official: false,
        distance: 9000,
        points: 0,
        location: LocationModel.empty(),
        createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
        autoGeneratedUsername: false,
        usernameChangeCounter: 0,
        provider: AuthWithProvider.local,
      );

  factory UserModel.fromEntity(User user) => UserModel(
        id: user.id,
        isDeleted: user.isDeleted,
        createdAt: user.createdAt,
        channels: user.channels?.map(ChannelModel.fromEntity).toList(),
        location: LocationModel.fromEntity(user.location),
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
        autoGeneratedUsername: user.autoGeneratedUsername,
        usernameChangeCounter: user.usernameChangeCounter,
        provider: user.provider,
      );
}
