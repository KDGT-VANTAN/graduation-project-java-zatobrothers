import 'package:reimi_app/data/dtos/user_with_profile_dto.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';

extension UserWithProfileDtoMapper on UserWithProfileDto {
  UserWithProfileReadModel toReadModel() {
    return UserWithProfileReadModel(
      id: id,
      name: name,
      gender: gender,
      birthDate: birthDate,
      address: address,
      mainPhotoUrl: mainPhotoUrl,
      introduction: introduction,
      isTodayReported: isTodayReported,
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
