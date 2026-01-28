import 'package:reimi_app/data/dtos/weather_personality_detail_dto.dart';
import 'package:reimi_app/data/mapper/type_compatibility_mapper.dart';
import 'package:reimi_app/domain/read_models/weather_personality_detail_read_model.dart';

extension WeatherPersonalityDetailDtoMapper on WeatherPersonalityDetailDto {
  WeatherPersonalityDetailReadModel toReadModel() {
    return WeatherPersonalityDetailReadModel(
      typeCode: typeCode,
      typeName: typeName,
      typeCatchphrase: typeCatchphrase,
      typeCharacterImageUrl: typeCharacterImageUrl,
      rulingStatement: rulingStatement,
      axisFeatures: axisFeatures,
      axisScore: axisScore,
      behaviorTendencyList: behaviorTendencyList,
      compatibleTypes: compatibleTypes.toReadModels(),
      incompatibleTypes: incompatibleTypes.toReadModels(),
      godsMessage: godsMessage,
    );
  }
}
