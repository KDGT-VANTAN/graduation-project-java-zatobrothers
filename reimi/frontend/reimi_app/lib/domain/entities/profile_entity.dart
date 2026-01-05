import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';

part 'profile_entity.freezed.dart';

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String id,
    required String userId,
    required String introduction,
    required DateTime createdAt,
    required DateTime updatedAt,
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
  }) = _ProfileEntity;
}
