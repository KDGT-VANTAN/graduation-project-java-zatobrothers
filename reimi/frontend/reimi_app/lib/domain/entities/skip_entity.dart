import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';

part 'skip_entity.freezed.dart';
part 'skip_entity.g.dart';

@freezed
abstract class SkipEntity with _$SkipEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SkipEntity({
    required String id,
    required String userId,
    required String skippedUserId,
    @IsoDateTimeOrNullConverter() DateTime? createdAt,
  }) = _SkipEntity;

  factory SkipEntity.fromJson(Map<String, dynamic> json) =>
      _$SkipEntityFromJson(json);
}
