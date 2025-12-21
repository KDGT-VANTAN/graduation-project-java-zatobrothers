import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';

part 'rainbow_like_entity.freezed.dart';
part 'rainbow_like_entity.g.dart';

@freezed
abstract class RainbowLikeEntity with _$RainbowLikeEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory RainbowLikeEntity({
    required String id,
    required String fromUserId,
    required String toUserId,
    required String message,
    @IsoDateTimeOrNullConverter() DateTime? createdAt,
  }) = _RainbowLikeEntity;

  factory RainbowLikeEntity.fromJson(Map<String, dynamic> json) =>
      _$RainbowLikeEntityFromJson(json);
}
