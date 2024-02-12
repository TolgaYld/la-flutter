import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/core/utils/datetime_converter.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/channel_model.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/story.dart';

part 'story_model.freezed.dart';
part 'story_model.g.dart';

@freezed
class StoryModel extends Story with _$StoryModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory StoryModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'created_by') required UserModel createdBy,
    required List<double> coordinates,
    required PostType type,
    required List<ChannelModel> channels,
    List<UserModel>? likes,
    List<UserModel>? dislikes,
    String? text,
    List<String>? media,
    String? city,
  }) = _StoryModel;

  factory StoryModel.fromJson(DataMap json) => _$StoryModelFromJson(json);

  factory StoryModel.empty() => StoryModel(
        id: 'empty',
        isActive: true,
        isDeleted: false,
        createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
        createdBy: UserModel.empty(),
        coordinates: [3.69, 3.69],
        type: PostType.public,
        channels: [ChannelModel.empty()],
      );

  factory StoryModel.fromEntity(Story story) => StoryModel(
        id: story.id,
        isActive: story.isActive,
        isDeleted: story.isDeleted,
        createdAt: story.createdAt,
        createdBy: UserModel.fromEntity(story.createdBy),
        dislikes: story.dislikes?.map(UserModel.fromEntity).toList(),
        likes: story.likes?.map(UserModel.fromEntity).toList(),
        type: story.type,
        media: story.media,
        text: story.text,
        channels: story.channels.map(ChannelModel.fromEntity).toList(),
        coordinates: story.coordinates,
        city: story.city,
      );
}
