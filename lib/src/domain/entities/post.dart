import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/src/domain/entities/channel.dart';
import 'package:locall_app/src/domain/entities/comment.dart';
import 'package:locall_app/src/domain/entities/user.dart';

class Post {
  const Post({
    required this.id,
    required this.createdBy,
    required this.coordinates,
    required this.channels,
    required this.type,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    this.likes,
    this.dislikes,
    this.city,
    this.text,
    this.media,
    this.comments,
  });

  final String id;
  final User createdBy;
  final List<double> coordinates;
  final List<Channel> channels;
  final PostType type;
  final List<User>? likes;
  final List<User>? dislikes;
  final bool isActive;
  final bool isDeleted;
  final DateTime createdAt;
  final String? city;
  final String? text;
  final List<String>? media;
  final List<Comment>? comments;
}
