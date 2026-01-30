import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/axis_feature_read_model.dart';
import 'package:reimi_app/domain/read_models/behavior_tendency_read_model.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'weather_personality_result_read_model.freezed.dart';

@freezed
abstract class WeatherPersonalityResultReadModel
    with _$WeatherPersonalityResultReadModel {
  const factory WeatherPersonalityResultReadModel({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeImageUrl,
    required String rulingStatement,
    required List<AxisFeatureReadModel> axisFeatures,
    required Map<WeatherPersonalityAxis, int> userAxisScore,
    required List<BehaviorTendencyReadModel> behaviorTendencies,
    required String godsMessage,
  }) = _WeatherPersonalityResultReadModel;
}
