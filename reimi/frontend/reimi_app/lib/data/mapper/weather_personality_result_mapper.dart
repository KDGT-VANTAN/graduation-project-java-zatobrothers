import 'package:reimi_app/data/dtos/weather_personality_result_dto.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';

extension WeatherPersonalityResultDtoMapper on WeatherPersonalityResultDto {
  WeatherPersonalityResultReadModel toReadModel() {
    return WeatherPersonalityResultReadModel(
      typeCode: typeCode,
      typeName: typeName,
      typeCatchphrase: typeCatchphrase,
      typeCharacterImageUrl: typeCharacterImageUrl,
      rulingStatement: rulingStatement,
      axisFeatures: axisFeatures,
      axisScore: axisScore,
      behaviorTendencyList: behaviorTendencyList,
      godsMessage: godsMessage,
    );
  }
}
