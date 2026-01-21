import 'package:reimi_app/data/datasources/remote/rainbow_like_remote_datasource.dart';

class RainbowLikeMockDataSource implements RainbowLikeRemoteDataSource {
  const RainbowLikeMockDataSource();

  @override
  Future<void> rainbowlikeUser({
    required String userId,
    required String message,
  }) async {
    return;
  }
}
