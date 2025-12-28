import 'package:reimi_app/data/models/user_with_profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<UserWithProfileModel?> fetchUserProfile(String userId);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileRemoteDataSourceImpl();

  @override
  Future<UserWithProfileModel?> fetchUserProfile(String userId) async {
    return null;
  }
}
