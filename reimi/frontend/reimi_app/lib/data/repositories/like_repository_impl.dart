import 'package:reimi_app/data/datasources/remote/like_remote_datasource.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';

class LikeRepositoryImpl implements LikeRepository {
  const LikeRepositoryImpl(this._remote);
  final LikeRemoteDataSource _remote;

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersFromUser() {
    return _remote.fetchLikeUsersFromUser();
  }

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersToUser() {
    return _remote.fetchLikeUsersToUser();
  }

  @override
  Future<void> likeUser(String userId) {
    return _remote.likeUser(userId);
  }
}
