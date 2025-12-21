import 'package:reimi_app/data/models/user_with_profile_model.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class GetUserProfileUseCase {
  const GetUserProfileUseCase({
    required this.userRepository,
    required this.profileRepository,
  });
  final UserRepository userRepository;
  final ProfileRepository profileRepository;

  Future<UserWithProfileModel?> call(String userId) async {
    final user = await userRepository.fetchUser(userId);
    if (user == null) {
      return null;
    }

    final profile = await profileRepository.fetchProfile(userId);
    if (profile == null) {
      return null;
    }

    return UserWithProfileModel(
      userId: user.id,
      firebaseUid: user.firebaseUid,
      name: user.name,
      gender: user.gender,
      birthDate: user.birthDate,
      address: user.address,
      mainPhotoUrl: user.mainPhotoUrl,
      lastLoginAt: user.lastLoginAt,
      status: user.status,
      profileId: profile.id,
      introduction: profile.introduction,
      height: profile.height,
      bodyShape: profile.bodyShape,
      annualIncome: profile.annualIncome,
      bloodType: profile.bloodType,
      hometown: profile.hometown,
      communicationStyle: profile.communicationStyle,
      occupation: profile.occupation,
      education: profile.education,
      smoking: profile.smoking,
      alcohol: profile.alcohol,
      holiday: profile.holiday,
      sunnyDayHobbies: profile.sunnyDayHobbies,
      rainyDayHobbies: profile.rainyDayHobbies,
    );
  }
}
