import 'package:reimi_app/data/models/user_with_profile_model.dart';

abstract class ProfileRepository {
  Future<UserWithProfileModel?> fetchUserProfile(String userId);
}
