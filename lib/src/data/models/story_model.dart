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
  @JsonSerializable(explicitToJson: true)
  factory StoryModel({
    required String id,
    @JsonKey(name: 'is_active', required: true) required bool isActive,
    @JsonKey(name: 'is_deleted', required: true) required bool isDeleted,
    @JsonKey(name: 'created_by') required UserModel createdBy,
    @DateTimeConverter()
    @JsonKey(name: 'created_at', required: true)
    required DateTime createdAt,
    required List<double> coordinates,
    required PostType type,
    required ChannelModel channel,
    required List<UserModel> likes,
    required List<UserModel> dislikes,
    String? text,
    List<String>? media,
    String? city,
  }) = _StoryModel;

  factory StoryModel.fromJson(DataMap json) => _$StoryModelFromJson(json);

  factory StoryModel.fromEntity(Story story) => StoryModel(
        id: story.id,
        isActive: story.isActive,
        isDeleted: story.isDeleted,
        createdAt: story.createdAt,
        createdBy: UserModel.fromEntity(story.createdBy),
        dislikes: story.dislikes.map(UserModel.fromEntity).toList(),
        likes: story.likes.map(UserModel.fromEntity).toList(),
        type: story.type,
        media: story.media,
        text: story.text,
        channel: ChannelModel.fromEntity(story.channel),
        coordinates: story.coordinates,
        city: story.city,
      );
}
