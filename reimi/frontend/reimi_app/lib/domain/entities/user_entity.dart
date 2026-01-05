import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String firebaseUid,
    required String name,
    required Gender gender,
    required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String email,
    required DateTime lastLoginAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    required UserStatus status,
    required DateTime withdrawalAt,
  }) = _UserEntity;
}
