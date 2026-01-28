import 'package:reimi_app/domain/read_models/like_user_read_model.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';

class GetLikeUsersToUserUseCase {
  const GetLikeUsersToUserUseCase(this._repository);
  final LikeRepository _repository;

  Future<List<LikeUserReadModel>> call() {
    final likeUsers = _repository.fetchLikeUsersToUser();
    return likeUsers;
  }
}
