import 'package:locall_app/src/domain/entities/channel.dart';
import 'package:locall_app/src/domain/entities/comment.dart';
import 'package:locall_app/src/domain/entities/post.dart';
import 'package:locall_app/src/domain/entities/report.dart';
import 'package:locall_app/src/domain/entities/story.dart';

class User {
  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.channels,
    required this.coordinates,
    required this.distance,
    required this.points,
    required this.official,
    required this.isDeleted,
    required this.isBanned,
    required this.isAdmin,
    this.posts,
    this.storys,
    this.comments,
    this.reports,
    this.reporteds,
    this.deviceType,
    this.deviceId,
    this.createdAt,
  });

  User.empty()
      : this(
          id: '',
          channels: [
            Channel(
              id: 'id',
              name: 'name',
              isActive: true,
              isDeleted: false,
              createdAt: DateTime(2024),
            ),
          ],
          coordinates: [0.0, 0.0],
          distance: 3,
          isAdmin: false,
          isBanned: false,
          isDeleted: false,
          official: false,
          points: 369,
          username: 'test',
          email: 'empty@empty.com',
        );

  final String id;
  final String username;
  final String email;
  final List<Channel> channels;
  final List<double> coordinates;
  final int distance;
  final int points;
  final bool official;
  final bool isDeleted;
  final bool isBanned;
  final bool isAdmin;
  final List<Post>? posts;
  final List<Story>? storys;
  final List<Comment>? comments;
  final List<Report>? reports;
  final List<Report>? reporteds;
  final String? deviceType;
  final String? deviceId;
  final DateTime? createdAt;
}
