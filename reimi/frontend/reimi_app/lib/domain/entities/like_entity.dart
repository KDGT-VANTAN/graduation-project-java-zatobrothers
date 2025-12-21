import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';

part 'like_entity.freezed.dart';
part 'like_entity.g.dart';

@freezed
abstract class LikeEntity with _$LikeEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LikeEntity({
    required String id,
    required String fromUserId,
    required String toUserId,
    @IsoDateTimeOrNullConverter() DateTime? createdAt,
  }) = _LikeEntity;

  factory LikeEntity.fromJson(Map<String, dynamic> json) =>
      _$LikeEntityFromJson(json);
}
