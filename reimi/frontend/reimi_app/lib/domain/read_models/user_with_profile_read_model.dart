import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
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

part 'user_with_profile_read_model.freezed.dart';
part 'user_with_profile_read_model.g.dart';

@freezed
abstract class UserWithProfileReadModel with _$UserWithProfileReadModel {
  const factory UserWithProfileReadModel({
    required String id,
    required String name,
    required Gender gender,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String introduction,
    required bool isTodayReported,
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
  }) = _UserWithProfileReadModel;

  factory UserWithProfileReadModel.fromJson(Map<String, dynamic> json) =>
      _$UserWithProfileReadModelFromJson(json);
}
