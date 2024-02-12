import 'package:locall_app/src/domain/entities/post.dart';
import 'package:locall_app/src/domain/entities/story.dart';
import 'package:locall_app/src/domain/entities/user.dart';

class Channel {
  const Channel({
    required this.id,
    required this.name,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    this.subscriptions,
    this.posts,
    this.storys,
    this.createdBy,
  });

  Channel.empty()
      : this(
          id: 'id',
          name: 'name',
          isActive: true,
          isDeleted: false,
          createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
        );

  final String id;
  final String name;
  final bool isActive;
  final bool isDeleted;
  final DateTime createdAt;
  final List<User>? subscriptions;
  final List<Post>? posts;
  final List<Story>? storys;
  final User? createdBy;
}
