import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/src/domain/entities/post.dart';
import 'package:locall_app/src/domain/entities/user.dart';

class Comment {
  const Comment({
    required this.id,
    required this.post,
    required this.createdBy,
    required this.type,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    this.likes,
    this.dislikes,
    this.text,
    this.media,
  });
  final String id;
  final Post post;
  final User createdBy;
  final PostType type;
  final List<User>? likes;
  final List<User>? dislikes;
  final bool isActive;
  final bool isDeleted;
  final DateTime createdAt;
  final String? text;
  final List<String>? media;
}
