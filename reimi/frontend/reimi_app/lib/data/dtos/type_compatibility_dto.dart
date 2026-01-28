import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_compatibility_dto.freezed.dart';
part 'type_compatibility_dto.g.dart';

@freezed
abstract class TypeCompatibilityDto with _$TypeCompatibilityDto {
  const factory TypeCompatibilityDto({
    required String typeCode,
    required String typeName,
    required String typeCharacterImageUrl,
    required String compatibilityPoint,
  }) = _TypeCompatibilityDto;

  factory TypeCompatibilityDto.fromJson(
          Map<String, dynamic> json) =>
      _$TypeCompatibilityDtoFromJson(json);
}
