import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';

class GetUserProfileUseCase {
  const GetUserProfileUseCase(this._repository);
  final ProfileRepository _repository;

  Future<UserWithProfileReadModel> call(String userId) {
    return _repository.fetchUserProfile(userId);
  }
}
