import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'weather_personality_character_dto.freezed.dart';
part 'weather_personality_character_dto.g.dart';

@freezed
abstract class WeatherPersonalityCharacterDto with _$WeatherPersonalityCharacterDto {
  const factory WeatherPersonalityCharacterDto({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeImageUrl,
  }) = _WeatherPersonalityCharacterDto;

  factory WeatherPersonalityCharacterDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherPersonalityCharacterDtoFromJson(json);
}
