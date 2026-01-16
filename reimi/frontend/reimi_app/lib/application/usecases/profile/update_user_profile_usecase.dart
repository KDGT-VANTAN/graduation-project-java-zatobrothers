import 'package:reimi_app/domain/params/update_profile_params.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';

class UpdateUserProfileUseCase {
  const UpdateUserProfileUseCase(this._repository);
  final ProfileRepository _repository;

  Future<void> call({
    required UpdateProfileParams params,
    required String userId,
  }) async {
    return await _repository.updateUserProfile(
      params: params,
      userId: userId,
    );
  }
}
