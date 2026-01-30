import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'type_compatibility_dto.freezed.dart';
part 'type_compatibility_dto.g.dart';

@freezed
abstract class TypeCompatibilityDto with _$TypeCompatibilityDto {
  const factory TypeCompatibilityDto({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeImageUrl,
    required String compatibilityPoint,
  }) = _TypeCompatibilityDto;

  factory TypeCompatibilityDto.fromJson(
          Map<String, dynamic> json) =>
      _$TypeCompatibilityDtoFromJson(json);
}
