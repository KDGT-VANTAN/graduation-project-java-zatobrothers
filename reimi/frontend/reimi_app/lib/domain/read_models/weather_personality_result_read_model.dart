import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_personality_result_read_model.freezed.dart';
part 'weather_personality_result_read_model.g.dart';

@freezed
abstract class WeatherPersonalityResultReadModel
    with _$WeatherPersonalityResultReadModel {
  const factory WeatherPersonalityResultReadModel({
    required String typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeCharacterImageUrl,
    required String rulingStatement,
    required List<String> axisFeatures,
    required List<int> axisScore,
    required List<String> behaviorTendencyList,
    required String godsMessage,
  }) = _WeatherPersonalityResultReadModel;

  factory WeatherPersonalityResultReadModel.fromJson(
          Map<String, dynamic> json) =>
      _$WeatherPersonalityResultReadModelFromJson(json);
}
