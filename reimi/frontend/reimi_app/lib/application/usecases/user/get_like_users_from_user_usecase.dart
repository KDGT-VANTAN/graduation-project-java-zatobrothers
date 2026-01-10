import 'package:reimi_app/domain/read_models/like_user_read_model.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';

class GetLikeUsersFromUserUseCase {
  const GetLikeUsersFromUserUseCase(this._repository);
  final LikeRepository _repository;

  Future<List<LikeUserReadModel>> call() async {
    final likeUsers = await _repository.fetchLikeUsersFromUser();
    return likeUsers;
  }
}
