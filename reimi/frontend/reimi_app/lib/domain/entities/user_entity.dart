import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserEntity({
    required String id,
    required String firebaseUid,
    required String name,
    required Gender gender,
    @IsoDateTimeConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String email,
    @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
    @IsoDateTimeOrNullConverter() DateTime? createdAt,
    @IsoDateTimeOrNullConverter() DateTime? updatedAt,
    required UserStatus status,
    @IsoDateTimeOrNullConverter() DateTime? withdrawalAt,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
