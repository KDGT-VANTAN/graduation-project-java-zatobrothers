import 'package:reimi_app/data/datasources/remote/rainbow_like_remote_datasource.dart';
import 'package:reimi_app/data/mapper/rainbow_like_user_mapper.dart';
import 'package:reimi_app/domain/read_models/rainbow_like_user_read_model.dart';
import 'package:reimi_app/domain/repositories/rainbow_like_repository.dart';

class RainbowLikeRepositoryImpl implements RainbowLikeRepository {
  const RainbowLikeRepositoryImpl(this._remote);
  final RainbowLikeRemoteDataSource _remote;

  @override
  Future<List<RainbowLikeUserReadModel>> fetchRainbowLikeUsersFromUser() async {
    final dtos = await _remote.fetchRainbowLikeUsersFromUser();
    return dtos.toReadModels();
  }

  @override
  Future<List<RainbowLikeUserReadModel>> fetchRainbowLikeUsersToUser() async {
    final dtos = await _remote.fetchRainbowLikeUsersToUser();
    return dtos.toReadModels();
  }

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
