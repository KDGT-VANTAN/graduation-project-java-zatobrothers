import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';

part 'create_user_dto.freezed.dart';
part 'create_user_dto.g.dart';

@freezed
abstract class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({
    required Gender gender,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String name,
    required String introduction,
    required String mainPhoto,
    required String email,
  }) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);
}
