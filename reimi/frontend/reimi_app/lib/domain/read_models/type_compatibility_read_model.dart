import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'type_compatibility_read_model.freezed.dart';

@freezed
abstract class TypeCompatibilityReadModel
    with _$TypeCompatibilityReadModel {
  const factory TypeCompatibilityReadModel({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeImageUrl,
    required String compatibilityPoint,
  }) = _TypeCompatibilityReadModel;
}
