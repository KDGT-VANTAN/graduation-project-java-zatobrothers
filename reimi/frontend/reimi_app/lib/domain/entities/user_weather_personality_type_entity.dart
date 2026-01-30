import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_weather_personality_type_entity.freezed.dart';

@freezed
abstract class UserWeatherPersonalityTypeEntity
    with _$UserWeatherPersonalityTypeEntity {
  const factory UserWeatherPersonalityTypeEntity({
    required String id,
    required String userId,
    required String typeId,
    required int score,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserWeatherPersonalityTypeEntity;
}
