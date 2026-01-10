import 'package:reimi_app/domain/params/update_profile_params.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';

abstract class ProfileRepository {
  Future<UserWithProfileReadModel?> fetchUserProfile(String userId);
  Future<void> updateUserProfile(UpdateProfileParams params);
}
