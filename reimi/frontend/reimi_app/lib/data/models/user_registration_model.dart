import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';

part 'user_registration_model.freezed.dart';
part 'user_registration_model.g.dart';

@freezed
abstract class UserRegistrationModel with _$UserRegistrationModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserRegistrationModel({
    Gender? gender,
    DateTime? birthDate,
    Address? address,
    String? name,
    String? introduction,
    String? mainPhotoUrl,
  }) = _UserRegistrationModel;

  factory UserRegistrationModel.fromJson(Map<String, dynamic> json) => _$UserRegistrationModelFromJson(json);
}
