import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'ai_matching_user_dto.freezed.dart';
part 'ai_matching_user_dto.g.dart';

@freezed
abstract class AIMatchingUserDto with _$AIMatchingUserDto {
  const factory AIMatchingUserDto({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String typeImageUrl,
    required WeatherPersonalityCode typeCode,
    required String typeName,
    bool? isTodayReported,
  }) = _AIMatchingUserDto;

  factory AIMatchingUserDto.fromJson(Map<String, dynamic> json) =>
      _$AIMatchingUserDtoFromJson(json);
}
