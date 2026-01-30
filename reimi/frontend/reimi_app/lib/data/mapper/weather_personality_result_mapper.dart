import 'package:reimi_app/data/dtos/weather_personality_result_dto.dart';
import 'package:reimi_app/data/mapper/axis_feature_mapper.dart';
import 'package:reimi_app/data/mapper/behavior_tendency_mapper.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';

extension WeatherPersonalityResultDtoMapper on WeatherPersonalityResultDto {
  WeatherPersonalityResultReadModel toReadModel() {
    return WeatherPersonalityResultReadModel(
      typeCode: typeCode,
      typeName: typeName,
      typeCatchphrase: typeCatchphrase,
      typeImageUrl: typeImageUrl,
      rulingStatement: rulingStatement,
      axisFeatures: axisFeatures.toReadModels(),
      userAxisScore: userAxisScore,
      behaviorTendencies: behaviorTendencies.toReadModels(),
      godsMessage: godsMessage,
    );
  }
}
