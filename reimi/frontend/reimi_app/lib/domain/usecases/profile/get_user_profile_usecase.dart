import 'package:reimi_app/data/models/user_with_profile_model.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';

class GetUserProfileUseCase {
  const GetUserProfileUseCase(this._repository);
  final ProfileRepository _repository;

  Future<UserWithProfileModel?> call(String userId) async {
    final userProfile = await _repository.fetchUserProfile(userId);
    if (userProfile == null) {
      return null;
    }

    return userProfile;
  }
}
