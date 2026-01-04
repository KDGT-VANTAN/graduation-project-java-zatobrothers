import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';

part 'user_registration_model.freezed.dart';
part 'user_registration_model.g.dart';

@freezed
abstract class UserRegistrationModel with _$UserRegistrationModel {
  const factory UserRegistrationModel({
    Gender? gender,
    @YyyyMmDdDateConverter() DateTime? birthDate,
    Address? address,
    String? name,
    String? introduction,
    String? mainPhotoUrl,
    String? email,
  }) = _UserRegistrationModel;

  factory UserRegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationModelFromJson(json);
}
