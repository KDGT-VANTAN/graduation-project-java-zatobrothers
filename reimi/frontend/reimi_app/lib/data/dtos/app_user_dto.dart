import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';

part 'app_user_dto.freezed.dart';
part 'app_user_dto.g.dart';

@freezed
abstract class AppUserDto with _$AppUserDto {
  const factory AppUserDto({
    required String id,
    required String name,
    required Gender gender,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String email,
    required UserStatus status,
  }) = _AppUserDto;

  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);
}
