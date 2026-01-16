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

part 'profile_edit_state.freezed.dart';

@freezed
abstract class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState({
    String? id,
    String? name,
    Gender? gender,
    @YyyyMmDdDateConverter() DateTime? birthDate,
    Address? address,
    String? mainPhotoUrl,
    String? introduction,
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
    @Default(false) bool isChanged,
    @Default(false) bool isLoading,
    @Default(false) bool isInitialized,
    String? errorMessage,
    @Default(ProfileEditStatus.idle) ProfileEditStatus status,
  }) = _ProfileEditState;

  const ProfileEditState._();

  bool get canSubmit =>
      id?.isNotEmpty == true &&
      name?.isNotEmpty == true &&
      gender != null &&
      birthDate != null &&
      address != null &&
      mainPhotoUrl?.isNotEmpty == true &&
      introduction?.isNotEmpty == true;
}

enum ProfileEditStatus {
  idle,
  submitting,
  success,
  failure,
}
