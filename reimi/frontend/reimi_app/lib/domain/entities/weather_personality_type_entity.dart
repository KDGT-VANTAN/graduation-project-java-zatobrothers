import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_personality_type_entity.freezed.dart';

@freezed
abstract class WeatherPersonalityTypeEntity
    with _$WeatherPersonalityTypeEntity {
  const factory WeatherPersonalityTypeEntity({
    required String code,
    required String name,
    required String description,
    required String imagePath,
  }) = _WeatherPersonalityTypeEntity;
}
