import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_polarity.dart';

part 'axis_feature_read_model.freezed.dart';

@freezed
abstract class AxisFeatureReadModel with _$AxisFeatureReadModel {
  const factory AxisFeatureReadModel({
    required WeatherPersonalityAxis axis,
    required WeatherPersonalityPolarity polarity,
    required String description,
  }) = _AxisFeatureReadModel;
}
