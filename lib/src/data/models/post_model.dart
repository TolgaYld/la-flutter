import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/core/utils/datetime_converter.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/channel_model.dart';
import 'package:locall_app/src/data/models/comment_model.dart';
import 'package:locall_app/src/data/models/location_model.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/post.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel extends Post with _$PostModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory PostModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @JsonKey(name: 'created_by') required UserModel createdBy,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    required LocationModel location,
    required PostType type,
    required List<ChannelModel> channels,
    List<UserModel>? likes,
    List<UserModel>? dislikes,
    String? text,
    List<String>? media,
    String? city,
    List<CommentModel>? comments,
  }) = _PostModel;

  factory PostModel.fromJson(DataMap json) => _$PostModelFromJson(json);

  factory PostModel.empty() => PostModel(
        id: 'empty',
        isActive: true,
        isDeleted: false,
        createdBy: UserModel.empty(),
        createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
        location: LocationModel.empty(),
        type: PostType.anonymous,
        channels: [ChannelModel.empty()],
      );

  factory PostModel.fromEntity(Post post) => PostModel(
        id: post.id,
        isActive: post.isActive,
        isDeleted: post.isDeleted,
        createdAt: post.createdAt,
        createdBy: UserModel.fromEntity(post.createdBy),
        dislikes: post.dislikes?.map(UserModel.fromEntity).toList(),
        likes: post.likes?.map(UserModel.fromEntity).toList(),
        type: post.type,
        media: post.media,
        text: post.text,
        channels: post.channels.map(ChannelModel.fromEntity).toList(),
        location: LocationModel.fromEntity(post.location),
        city: post.city,
        comments: post.comments
            ?.map(
              CommentModel.fromEntity,
            )
            .toList(),
      );
}
