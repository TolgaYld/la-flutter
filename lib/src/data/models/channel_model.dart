import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/utils/datetime_converter.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/post_model.dart';
import 'package:locall_app/src/data/models/story_model.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/channel.dart';

part 'channel_model.freezed.dart';
part 'channel_model.g.dart';

@freezed
class ChannelModel extends Channel with _$ChannelModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ChannelModel({
    @JsonKey(name: '_id', required: true) required String id,
    required String name,
    @JsonKey(name: 'is_active', required: true) required bool isActive,
    @JsonKey(name: 'is_deleted', required: true) required bool isDeleted,
    @DateTimeConverter()
    @JsonKey(name: 'created_at', required: true)
    required DateTime createdAt,
    List<UserModel>? subscriptions,
    @JsonKey(
      name: 'created_by',
    )
    UserModel? createdBy,
    List<PostModel>? posts,
    List<StoryModel>? storys,
  }) = _ChannelModel;

  factory ChannelModel.fromJson(DataMap json) => _$ChannelModelFromJson(json);

  factory ChannelModel.empty() => ChannelModel(
        id: 'empty',
        name: 'empty',
        isActive: true,
        isDeleted: false,
        createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
        createdBy: UserModel.empty(),
      );

  factory ChannelModel.fromEntity(Channel channel) => ChannelModel(
        id: channel.id,
        name: channel.name,
        isActive: channel.isActive,
        isDeleted: channel.isDeleted,
        createdAt: channel.createdAt,
        createdBy: channel.createdBy != null
            ? UserModel.fromEntity(
                channel.createdBy!,
              )
            : null,
        posts: channel.posts?.map(PostModel.fromEntity).toList(),
        storys: channel.storys?.map(StoryModel.fromEntity).toList(),
        subscriptions:
            channel.subscriptions?.map(UserModel.fromEntity).toList(),
      );
}
