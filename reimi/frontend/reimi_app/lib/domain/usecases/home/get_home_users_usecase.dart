import 'package:reimi_app/data/models/home_user_model.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class GetHomeUsersUseCase {
  GetHomeUsersUseCase({
    required this.userRepository,
    required this.profileRepository,
  });
  final UserRepository userRepository;
  final ProfileRepository profileRepository;

  Future<List<HomeUserModel>?> call() async {
    final users = await userRepository.fetchUsers();
    if (users == null) {
      return null;
    }

    final homeUsers = <HomeUserModel>[];

    for (final user in users) {
      final profile = await profileRepository.fetchUserProfile(user.id);
      if (profile == null) {
        return null;
      }
      homeUsers.add(HomeUserModel(
        userId: user.id,
        firebaseUid: user.firebaseUid,
        name: user.name,
        birthDate: user.birthDate,
        address: user.address,
        mainPhotoUrl: user.mainPhotoUrl,
        lastLoginAt: user.lastLoginAt,
        status: user.status,
        introduction: profile.introduction,
      ));
    }
    return homeUsers;
  }
}
