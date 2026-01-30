import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/axis_feature_read_model.dart';
import 'package:reimi_app/domain/read_models/behavior_tendency_read_model.dart';
import 'package:reimi_app/domain/read_models/type_compatibility_read_model.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'weather_personality_detail_read_model.freezed.dart';

@freezed
abstract class WeatherPersonalityDetailReadModel
    with _$WeatherPersonalityDetailReadModel {
  const factory WeatherPersonalityDetailReadModel({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeImageUrl,
    required String rulingStatement,
    required List<AxisFeatureReadModel> axisFeatures,
    required Map<WeatherPersonalityAxis, int> userAxisScore,
    required List<BehaviorTendencyReadModel> behaviorTendencies,
    required List<TypeCompatibilityReadModel> compatibleTypes,
    required List<TypeCompatibilityReadModel> incompatibleTypes,
    required String godsMessage,
  }) = _WeatherPersonalityDetailReadModel;
}
