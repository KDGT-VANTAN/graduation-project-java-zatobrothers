import 'package:reimi_app/data/models/like_user_model.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';

class GetLikeUsersFromUserUseCase {
  const GetLikeUsersFromUserUseCase(this._repository);
  final LikeRepository _repository;

  Future<List<LikeUserModel>?> call(String userId) async {
    final likeUsers = await _repository.getLikeUsersFromUser(userId);
    if (likeUsers == null) {
      return null;
    }
    return likeUsers;
  }
}
