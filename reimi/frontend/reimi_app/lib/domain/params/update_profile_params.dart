import 'package:freezed_annotation/freezed_annotation.dart';
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

part 'update_profile_params.freezed.dart';

@freezed
abstract class UpdateProfileParams with _$UpdateProfileParams {
  const factory UpdateProfileParams({
    required String name,
    required Gender gender,
    required Address address,
    required String mainPhoto,
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
    List<String>? subPhotos,
  }) = _UpdateProfileParams;
}
