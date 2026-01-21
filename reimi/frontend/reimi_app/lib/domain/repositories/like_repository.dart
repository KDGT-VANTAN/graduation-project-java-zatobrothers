import 'package:reimi_app/domain/read_models/like_user_read_model.dart';

abstract class LikeRepository {
  Future<List<LikeUserReadModel>> fetchLikeUsersFromUser();
  Future<List<LikeUserReadModel>> fetchLikeUsersToUser();
  Future<void> likeUser(String userId);
}
