import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/core/utils/datetime_converter.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/data/models/post_model.dart';
import 'package:locall_app/src/data/models/user_model.dart';
import 'package:locall_app/src/domain/entities/comment.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel extends Comment with _$CommentModel {
  @JsonSerializable(explicitToJson: true)
  factory CommentModel({
    required String id,
    @JsonKey(name: 'is_active', required: true) required bool isActive,
    @JsonKey(name: 'is_deleted', required: true) required bool isDeleted,
    @JsonKey(name: 'created_by') required UserModel createdBy,
    @DateTimeConverter()
    @JsonKey(name: 'created_at', required: true)
    required DateTime createdAt,
    required PostType type,
    required List<UserModel> likes,
    required List<UserModel> dislikes,
    required PostModel post,
    String? text,
    List<String>? media,
  }) = _CommentModel;

  factory CommentModel.fromJson(DataMap json) => _$CommentModelFromJson(json);

  factory CommentModel.fromEntity(Comment comment) => CommentModel(
        id: comment.id,
        isActive: comment.isActive,
        isDeleted: comment.isDeleted,
        createdAt: comment.createdAt,
        createdBy: UserModel.fromEntity(comment.createdBy),
        dislikes: comment.dislikes.map(UserModel.fromEntity).toList(),
        likes: comment.likes.map(UserModel.fromEntity).toList(),
        type: comment.type,
        media: comment.media,
        text: comment.text,
        post: PostModel.fromEntity(comment.post),
      );
}
