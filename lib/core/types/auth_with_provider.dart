import 'package:json_annotation/json_annotation.dart';

enum AuthWithProvider {
  @JsonValue('LOCAL')
  local,
  @JsonValue('GOOGLE')
  google,
  @JsonValue('APPLE')
  apple,
}
