import 'package:reimi_app/data/models/like_user_model.dart';
import 'package:reimi_app/domain/entities/like_entity.dart';

abstract class LikeRemoteDataSource {
  Future<bool> isLiked({
    required String fromUserId,
    required String toUserId,
  });
  Future<LikeEntity> like({
    required String fromUserId,
    required String toUserId,
  });
  Future<List<LikeUserModel>?> getLikeUsersFromUser(String userId);
  Future<List<LikeUserModel>?> getLikeUsersToUser(String userId);
}

class LikeRemoteDataSourceImpl implements LikeRemoteDataSource {
  const LikeRemoteDataSourceImpl();

  @override
  Future<List<LikeUserModel>?> getLikeUsersFromUser(String userId) {
    // TODO: implement getLikesFromUser
    throw UnimplementedError();
  }

  @override
  Future<List<LikeUserModel>?> getLikeUsersToUser(String userId) {
    // TODO: implement getLikesToUser
    throw UnimplementedError();
  }

  @override
  Future<bool> isLiked({required String fromUserId, required String toUserId}) {
    // TODO: implement isLiked
    throw UnimplementedError();
  }

  @override
  Future<LikeEntity> like(
      {required String fromUserId, required String toUserId}) {
    // TODO: implement like
    throw UnimplementedError();
  }
}
