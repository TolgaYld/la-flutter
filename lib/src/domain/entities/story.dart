import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/src/domain/entities/channel.dart';
import 'package:locall_app/src/domain/entities/location.dart';
import 'package:locall_app/src/domain/entities/user.dart';

class Story {
  const Story({
    required this.id,
    required this.location,
    required this.type,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.createdBy,
    required this.channels,
    this.likes,
    this.dislikes,
    this.city,
    this.text,
    this.media,
  });

  Story.empty()
      : this(
          id: 'empty',
          location: Location.empty(),
          channels: [Channel.empty()],
          createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
          createdBy: User.empty(),
          isActive: true,
          isDeleted: false,
          type: PostType.public,
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
}
