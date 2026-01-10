import 'package:reimi_app/domain/entities/like_entity.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';

abstract class LikeRemoteDataSource {
  Future<List<LikeUserReadModel>> fetchLikeUsersFromUser();
  Future<List<LikeUserReadModel>> fetchLikeUsersToUser();
  Future<bool> isLiked({
    required String fromUserId,
    required String toUserId,
  });
  Future<LikeEntity> like({
    required String fromUserId,
    required String toUserId,
  });
}

class LikeRemoteDataSourceImpl implements LikeRemoteDataSource {
  const LikeRemoteDataSourceImpl();

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersFromUser() {
    // TODO: implement fetchLikeUsersFromUser
    throw UnimplementedError();
  }

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersToUser() {
    // TODO: implement fetchLikeUsersToUser
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
