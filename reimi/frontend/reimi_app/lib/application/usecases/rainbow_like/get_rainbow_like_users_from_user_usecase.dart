import 'package:reimi_app/domain/read_models/rainbow_like_user_read_model.dart';
import 'package:reimi_app/domain/repositories/rainbow_like_repository.dart';

class GetRainbowLikeUsersFromUserUseCase {
  const GetRainbowLikeUsersFromUserUseCase(this._repository);
  final RainbowLikeRepository _repository;

  Future<List<RainbowLikeUserReadModel>> call() {
    final likeUsers = _repository.fetchRainbowLikeUsersFromUser();
    return likeUsers;
  }
}
