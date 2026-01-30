import 'package:freezed_annotation/freezed_annotation.dart';

part 'behavior_tendency_dto.freezed.dart';
part 'behavior_tendency_dto.g.dart';

@freezed
abstract class BehaviorTendencyDto with _$BehaviorTendencyDto {
  const factory BehaviorTendencyDto({
    required String summary,
    required String detail,
  }) = _BehaviorTendencyDto;
  factory BehaviorTendencyDto.fromJson(Map<String, dynamic> json) =>
      _$BehaviorTendencyDtoFromJson(json);
}
