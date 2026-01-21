import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';

class LikeUserUseCase {
  const LikeUserUseCase(this._repository);
  final LikeRepository _repository;

  Future<void> call(String userId) async {
    try {
      await _repository.likeUser(userId);
    } on ApiException {
      rethrow;
    }
  }
}
