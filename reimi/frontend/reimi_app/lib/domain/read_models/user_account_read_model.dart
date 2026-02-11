import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/item_type_code.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'user_account_read_model.freezed.dart';

@freezed
abstract class UserAccountReadModel with _$UserAccountReadModel {
  const factory UserAccountReadModel({
    required String id,
    required String name,
    required String mainPhotoUrl,
    WeatherPersonalityCode? typeCode,
    String? typeName,
    String? typeImageUrl,
    required Map<ItemTypeCode, int> items,
  }) = _UserAccountReadModel;
}
