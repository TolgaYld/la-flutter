import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String timestamp) => DateTime.parse(timestamp);

  @override
  String toJson(DateTime date) => date.toIso8601String();
}
