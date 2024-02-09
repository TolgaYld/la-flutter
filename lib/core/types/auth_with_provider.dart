import 'package:json_annotation/json_annotation.dart';

enum AuthWithProvider {
  @JsonValue('google')
  google,
  @JsonValue('apple')
  apple,
}
