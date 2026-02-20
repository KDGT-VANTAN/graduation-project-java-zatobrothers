import 'package:reimi_app/data/dtos/weather_personality_character_dto.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_read_model.dart';

extension WeatherPersonalityCharacterDtoMapper
    on WeatherPersonalityCharacterDto {
  WeatherPersonalityCharacterReadModel toReadModel() {
    return WeatherPersonalityCharacterReadModel(
      typeCode: typeCode,
      typeName: typeName,
      typeCatchphrase: typeCatchphrase,
      typeImageUrl: typeImageUrl,
    );
  }
}

extension WeatherPersonalityCharacterDtoListMapper
    on List<WeatherPersonalityCharacterDto> {
  List<WeatherPersonalityCharacterReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
