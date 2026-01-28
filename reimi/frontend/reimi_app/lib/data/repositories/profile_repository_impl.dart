import 'package:reimi_app/data/datasources/remote/profile_remote_datasource.dart';
import 'package:reimi_app/data/extensions/update_profile_dto_extension.dart';
import 'package:reimi_app/domain/params/update_profile_params.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._remote);
  final ProfileRemoteDataSource _remote;

  @override
  Future<UserWithProfileReadModel> fetchUserProfile(String userId) {
    return _remote.fetchUserProfile(userId);
  }

  @override
  Future<void> updateUserProfile({
    required UpdateProfileParams params,
    required String userId,
  }) {
    final dto = params.toDto();
    return _remote.updateUserProfile(
      dto: dto,
      userId: userId,
    );
  }
}
