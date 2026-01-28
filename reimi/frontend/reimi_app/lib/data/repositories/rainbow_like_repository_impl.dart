import 'package:reimi_app/data/datasources/remote/rainbow_like_remote_datasource.dart';
import 'package:reimi_app/domain/repositories/rainbow_like_repository.dart';

class RainbowLikeRepositoryImpl implements RainbowLikeRepository {
  const RainbowLikeRepositoryImpl(this._remote);
  final RainbowLikeRemoteDataSource _remote;

  @override
  Future<void> rainbowlikeUser({
    required String userId,
    required String message,
  }) {
    return _remote.rainbowlikeUser(
      userId: userId,
      message: message,
    );
  }
}
