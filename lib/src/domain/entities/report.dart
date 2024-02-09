import 'package:locall_app/src/domain/entities/channel.dart';
import 'package:locall_app/src/domain/entities/comment.dart';
import 'package:locall_app/src/domain/entities/post.dart';
import 'package:locall_app/src/domain/entities/story.dart';
import 'package:locall_app/src/domain/entities/user.dart';

class Report {
  const Report({
    required this.id,
    required this.createdBy,
    required this.reason,
    required this.reportedUser,
    required this.isDone,
    required this.createdAt,
    this.post,
    this.comment,
    this.channel,
    this.story,
    this.city,
    this.notesAboutReport,
  });
  final String id;
  final User createdBy;
  final String reason;
  final User reportedUser;
  final bool isDone;
  final DateTime createdAt;
  final Post? post;
  final Comment? comment;
  final Channel? channel;
  final Story? story;
  final String? city;
  final String? notesAboutReport;
}
