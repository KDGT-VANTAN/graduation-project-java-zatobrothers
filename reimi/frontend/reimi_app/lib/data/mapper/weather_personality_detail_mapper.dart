import 'package:reimi_app/data/dtos/weather_personality_detail_dto.dart';
import 'package:reimi_app/data/mapper/axis_feature_mapper.dart';
import 'package:reimi_app/data/mapper/behavior_tendency_mapper.dart';
import 'package:reimi_app/data/mapper/type_compatibility_mapper.dart';
import 'package:reimi_app/domain/read_models/weather_personality_detail_read_model.dart';

extension WeatherPersonalityDetailDtoMapper on WeatherPersonalityDetailDto {
  WeatherPersonalityDetailReadModel toReadModel() {
    return WeatherPersonalityDetailReadModel(
      typeCode: typeCode,
      typeName: typeName,
      typeCatchphrase: typeCatchphrase,
      typeImageUrl: typeImageUrl,
      rulingStatement: rulingStatement,
      axisFeatures: axisFeatures.toReadModels(),
      userAxisScore: userAxisScore,
      behaviorTendencies: behaviorTendencies.toReadModels(),
      compatibleTypes: compatibleTypes.toReadModels(),
      incompatibleTypes: incompatibleTypes.toReadModels(),
      godsMessage: godsMessage,
    );
  }
}
