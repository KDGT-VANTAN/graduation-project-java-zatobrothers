import 'package:reimi_app/data/datasources/remote/profile_remote_datasource.dart';
import 'package:reimi_app/data/mapper/update_profile_mapper.dart';
import 'package:reimi_app/data/mapper/user_with_profile_mapper.dart';
import 'package:reimi_app/domain/params/update_profile_params.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._remote);
  final ProfileRemoteDataSource _remote;

  @override
  Future<UserWithProfileReadModel> fetchUserProfile(String userId) async {
    final dto = await _remote.fetchUserProfile(userId);
    return dto.toReadModel();
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
