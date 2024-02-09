import 'package:locall_app/core/types/post_type.dart';
import 'package:locall_app/src/domain/entities/channel.dart';
import 'package:locall_app/src/domain/entities/user.dart';

class Story {
  const Story({
    required this.id,
    required this.createdBy,
    required this.coordinates,
    required this.channel,
    required this.type,
    required this.likes,
    required this.dislikes,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    this.city,
    this.text,
    this.media,
  });

  final String id;
  final User createdBy;
  final List<double> coordinates;
  final Channel channel;
  final PostType type;
  final List<User> likes;
  final List<User> dislikes;
  final bool isActive;
  final bool isDeleted;
  final DateTime createdAt;
  final String? city;
  final String? text;
  final List<String>? media;
}
