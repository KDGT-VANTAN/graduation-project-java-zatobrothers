import 'package:reimi_app/data/dtos/update_profile_dto.dart';
import 'package:reimi_app/domain/params/update_profile_params.dart';

extension UpdateProfileDtoMapper on UpdateProfileParams {
  UpdateProfileDto toDto() {
    return UpdateProfileDto(
      name: name,
      gender: gender,
      address: address,
      mainPhoto: mainPhoto,
      introduction: introduction,
      height: height,
      bodyShape: bodyShape,
      annualIncome: annualIncome,
      bloodType: bloodType,
      hometown: hometown,
      communicationStyle: communicationStyle,
      occupation: occupation,
      education: education,
      smoking: smoking,
      alcohol: alcohol,
      holiday: holiday,
      sunnyDayHobbies: sunnyDayHobbies,
      rainyDayHobbies: rainyDayHobbies,
      subPhotos: subPhotos,
    );
  }
}
