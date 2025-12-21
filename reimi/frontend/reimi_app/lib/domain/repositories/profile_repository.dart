import 'package:reimi_app/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<List<ProfileEntity>?> fetchProfiles(List<String> userIds);
  Future<ProfileEntity?> fetchProfile(String userId);
}
