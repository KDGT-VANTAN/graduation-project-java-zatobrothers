import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/repositories/rainbow_like_repository.dart';

class RainbowLikeUserUseCase {
  const RainbowLikeUserUseCase(this._repository);
  final RainbowLikeRepository _repository;

  Future<void> call({
    required String userId,
    required String message,
  }) async {
    try {
      await _repository.rainbowlikeUser(
        userId: userId,
        message: message,
      );
    } on ApiException {
      rethrow;
    }
  }
}
