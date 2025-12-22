import 'package:reimi_app/data/datasources/like_remote_datasource.dart';
import 'package:reimi_app/data/models/like_user_model.dart';
import 'package:reimi_app/domain/entities/like_entity.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';

class LikeRepositoryImpl implements LikeRepository {
  const LikeRepositoryImpl(this._remote);
  final LikeRemoteDataSource _remote;

  @override
  Future<List<LikeUserModel>?> getLikeUsersFromUser(String userId) {
    return _remote.getLikeUsersFromUser(userId);
  }

  @override
  Future<List<LikeUserModel>?> getLikeUsersToUser(String userId) {
    return _remote.getLikeUsersToUser(userId);
  }

  @override
  Future<bool> isLiked({
    required String fromUserId,
    required String toUserId,
  }) {
    // TODO: implement like
    throw UnimplementedError();
  }

  @override
  Future<LikeEntity> like({
    required String fromUserId,
    required String toUserId,
  }) {
    // TODO: implement like
    throw UnimplementedError();
  }
}
