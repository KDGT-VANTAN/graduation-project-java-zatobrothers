import 'package:reimi_app/data/models/like_user_model.dart';
import 'package:reimi_app/domain/entities/like_entity.dart';

abstract class LikeRepository {
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
