import 'package:json_annotation/json_annotation.dart';

class YyyyMmDdDateConverter implements JsonConverter<DateTime?, String?> {
  const YyyyMmDdDateConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return DateTime.parse(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    final year = object.year.toString().padLeft(4, '0');
    final month = object.month.toString().padLeft(2, '0');
    final day = object.day.toString().padLeft(2, '0');
    return '$year-$month-$day';
  }
}
