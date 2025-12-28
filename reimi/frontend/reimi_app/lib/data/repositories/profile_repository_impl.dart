import 'package:reimi_app/data/datasources/profile_remote_datasource.dart';
import 'package:reimi_app/data/models/user_with_profile_model.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._remote);
  final ProfileRemoteDataSource _remote;

  @override
  Future<UserWithProfileModel?> fetchUserProfile(String userId) {
    return _remote.fetchUserProfile(userId);
  }
}
