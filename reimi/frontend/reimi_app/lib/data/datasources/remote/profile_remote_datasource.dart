import 'package:reimi_app/data/dtos/update_profile_dto.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';

abstract class ProfileRemoteDataSource {
  Future<UserWithProfileReadModel?> fetchUserProfile(String userId);
  Future<void> updateUserProfile(UpdateProfileDto dto);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileRemoteDataSourceImpl();

  @override
  Future<UserWithProfileReadModel?> fetchUserProfile(String userId) async {
    return null;
  }

  @override
  Future<void> updateUserProfile(UpdateProfileDto dto) async {}
}
