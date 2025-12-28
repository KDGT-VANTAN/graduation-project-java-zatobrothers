import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';

part 'user_with_profile_model.freezed.dart';
part 'user_with_profile_model.g.dart';

@freezed
abstract class UserWithProfileModel with _$UserWithProfileModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserWithProfileModel({
    required String userId,
    required String firebaseUid,
    required String name,
    required Gender gender,
    @IsoDateTimeConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
    required UserStatus status,
    required String profileId,
    required String introduction,
    Height? height,
    BodyShape? bodyShape,
    AnnualIncome? annualIncome,
    BloodType? bloodType,
    Address? hometown,
    CommunicationStyle? communicationStyle,
    Occupation? occupation,
    Education? education,
    Smoking? smoking,
    Alcohol? alcohol,
    Holiday? holiday,
    List<String>? sunnyDayHobbies,
    List<String>? rainyDayHobbies,
    List<String>? subPhotoUrls,
  }) = _UserWithProfileModel;

  factory UserWithProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserWithProfileModelFromJson(json);
}
