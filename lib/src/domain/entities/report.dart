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
    required this.isDone,
    required this.createdAt,
    this.reportedUser,
    this.post,
    this.comment,
    this.channel,
    this.story,
    this.city,
    this.notesAboutReport,
  });

  Report.empty()
      : this(
          id: 'empty',
          createdBy: User.empty(),
          isDone: true,
          reason: 'empty',
          createdAt: DateTime.parse('2024-02-10T14:38:36.936Z'),
        );

  final String id;
  final User createdBy;
  final String reason;
  final User? reportedUser;
  final bool isDone;
  final DateTime createdAt;
  final Post? post;
  final Comment? comment;
  final Channel? channel;
  final Story? story;
  final String? city;
  final String? notesAboutReport;
}
