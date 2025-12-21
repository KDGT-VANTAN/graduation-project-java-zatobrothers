import 'package:reimi_app/data/datasources/profile_remote_datasource.dart';
import 'package:reimi_app/domain/entities/profile_entity.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._remote);
  final ProfileRemoteDataSource _remote;

  @override
  Future<List<ProfileEntity>?> fetchProfiles(List<String> userIds) {
    return _remote.fetchProfiles(userIds);
  }

  @override
  Future<ProfileEntity?> fetchProfile(String userId) {
    return _remote.fetchProfile(userId);
  }
}
