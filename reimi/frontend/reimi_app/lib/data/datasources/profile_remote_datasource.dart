import 'package:reimi_app/domain/entities/profile_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<List<ProfileEntity>?> fetchProfiles(List<String> userIds);
  Future<ProfileEntity?> fetchProfile(String userId);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileRemoteDataSourceImpl();

  @override
  Future<List<ProfileEntity>?> fetchProfiles(List<String> userIds) async {
    return [];
  }

  @override
  Future<ProfileEntity?> fetchProfile(String userId) async {
    return null;
  }
}
