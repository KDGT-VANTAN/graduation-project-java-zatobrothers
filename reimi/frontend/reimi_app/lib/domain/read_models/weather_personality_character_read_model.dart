import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'weather_personality_character_read_model.freezed.dart';

@freezed
abstract class WeatherPersonalityCharacterReadModel
    with _$WeatherPersonalityCharacterReadModel {
  const factory WeatherPersonalityCharacterReadModel({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeImageUrl,
  }) = _WeatherPersonalityCharacterReadModel;
}
