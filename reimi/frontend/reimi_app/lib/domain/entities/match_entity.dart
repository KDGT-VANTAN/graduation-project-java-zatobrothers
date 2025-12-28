import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';

part 'match_entity.freezed.dart';
part 'match_entity.g.dart';

@freezed
abstract class MatchEntity with _$MatchEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MatchEntity({
    required String id,
    required String user1Id,
    required String user2Id,
    required bool isActive,
    @IsoDateTimeOrNullConverter() DateTime? createdAt,
    @IsoDateTimeOrNullConverter() DateTime? updatedAt,
  }) = _MatchEntity;

  factory MatchEntity.fromJson(Map<String, dynamic> json) =>
      _$MatchEntityFromJson(json);
}
