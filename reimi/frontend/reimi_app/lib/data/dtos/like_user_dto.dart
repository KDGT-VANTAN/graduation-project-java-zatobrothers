import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'like_user_dto.freezed.dart';
part 'like_user_dto.g.dart';

@freezed
abstract class LikeUserDto with _$LikeUserDto {
  const factory LikeUserDto({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    String? introduction,
    bool? isTodayReported,
    String? typeImageUrl,
  }) = _LikeUserDto;

  factory LikeUserDto.fromJson(Map<String, dynamic> json) =>
      _$LikeUserDtoFromJson(json);
}
