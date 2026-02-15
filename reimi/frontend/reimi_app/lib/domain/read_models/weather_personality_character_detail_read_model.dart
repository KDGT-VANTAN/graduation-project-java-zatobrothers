import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/axis_feature_read_model.dart';
import 'package:reimi_app/domain/read_models/behavior_tendency_read_model.dart';
import 'package:reimi_app/domain/read_models/type_compatibility_read_model.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'weather_personality_character_detail_read_model.freezed.dart';

@freezed
abstract class WeatherPersonalityCharacterDetailReadModel
    with _$WeatherPersonalityCharacterDetailReadModel {
  const factory WeatherPersonalityCharacterDetailReadModel({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeImageUrl,
    required String rulingStatement,
    required List<AxisFeatureReadModel> axisFeatures,
    required List<BehaviorTendencyReadModel> behaviorTendencies,
    required List<TypeCompatibilityReadModel> compatibleTypes,
    required List<TypeCompatibilityReadModel> incompatibleTypes,
    required String godsMessage,
  }) = _WeatherPersonalityCharacterDetailReadModel;
}
