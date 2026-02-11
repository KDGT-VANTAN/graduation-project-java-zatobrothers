import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/item_type_code.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'user_account_dto.freezed.dart';
part 'user_account_dto.g.dart';

@freezed
abstract class UserAccountDto with _$UserAccountDto {
  const factory UserAccountDto({
    required String id,
    required String name,
    required String mainPhotoUrl,
    WeatherPersonalityCode? typeCode,
    String? typeName,
    String? typeImageUrl,
    required Map<ItemTypeCode, int> items,
  }) = _UserAccountDto;

  factory UserAccountDto.fromJson(Map<String, dynamic> json) =>
      _$UserAccountDtoFromJson(json);
}
