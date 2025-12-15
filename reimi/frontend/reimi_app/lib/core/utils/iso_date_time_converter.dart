import 'package:freezed_annotation/freezed_annotation.dart';

class IsoDateTimeConverter implements JsonConverter<DateTime, String> {
  const IsoDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}

class IsoDateTimeOrNullConverter
    implements JsonConverter<DateTime?, String?> {
  const IsoDateTimeOrNullConverter();

  @override
  DateTime? fromJson(String? json) =>
      json == null ? null : DateTime.tryParse(json);

  @override
  String? toJson(DateTime? object) => object?.toIso8601String();
}
