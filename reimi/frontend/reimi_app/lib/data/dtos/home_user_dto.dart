import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'home_user_dto.freezed.dart';
part 'home_user_dto.g.dart';

@freezed
abstract class HomeUserDto with _$HomeUserDto {
  const factory HomeUserDto({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String introduction,
    bool? isTodayReported,
    String? typeImageUrl,
  }) = _HomeUserDto;

  factory HomeUserDto.fromJson(Map<String, dynamic> json) =>
      _$HomeUserDtoFromJson(json);
}
