import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/src/domain/entities/channel.dart';
import 'package:locall_app/src/domain/entities/comment.dart';
import 'package:locall_app/src/domain/entities/location.dart';
import 'package:locall_app/src/domain/entities/user.dart';

class Post {
  const Post({
    required this.id,
    required this.createdBy,
    required this.location,
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

  Post.empty()
      : this(
          id: 'empty',
          createdBy: User.empty(),
          channels: [Channel.empty()],
          createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
          location: Location.empty(),
          type: PostType.public,
          isActive: true,
          isDeleted: false,
        );

  final String id;
  final User createdBy;
  final Location location;
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
