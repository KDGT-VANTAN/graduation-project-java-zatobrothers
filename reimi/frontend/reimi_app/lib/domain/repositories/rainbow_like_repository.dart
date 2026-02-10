import 'package:reimi_app/domain/read_models/rainbow_like_user_read_model.dart';

abstract class RainbowLikeRepository {
  Future<List<RainbowLikeUserReadModel>> fetchRainbowLikeUsersFromUser();
  Future<List<RainbowLikeUserReadModel>> fetchRainbowLikeUsersToUser();
  Future<void> rainbowlikeUser({
    required String userId,
    required String message,
  });
}
