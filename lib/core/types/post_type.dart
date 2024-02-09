import 'package:freezed_annotation/freezed_annotation.dart';

enum PostType {
  @JsonValue('PUBLIC')
  public,
  @JsonValue('ANONYMOUS')
  anonymous
}
