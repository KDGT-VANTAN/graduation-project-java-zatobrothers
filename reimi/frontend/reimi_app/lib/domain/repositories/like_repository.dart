import 'package:reimi_app/domain/entities/like_entity.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';

abstract class LikeRepository {
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
