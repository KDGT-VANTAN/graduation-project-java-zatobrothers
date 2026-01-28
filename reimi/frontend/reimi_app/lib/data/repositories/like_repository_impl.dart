import 'package:reimi_app/data/datasources/remote/like_remote_datasource.dart';
import 'package:reimi_app/data/mapper/like_user_mapper.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';

class LikeRepositoryImpl implements LikeRepository {
  const LikeRepositoryImpl(this._remote);
  final LikeRemoteDataSource _remote;

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersFromUser() async {
    final dtos = await _remote.fetchLikeUsersFromUser();
    return dtos.toReadModels();
  }

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersToUser() async {
    final dtos = await _remote.fetchLikeUsersToUser();
    return dtos.toReadModels();
  }

  @override
  Future<void> likeUser(String userId) {
    return _remote.likeUser(userId);
  }
}
