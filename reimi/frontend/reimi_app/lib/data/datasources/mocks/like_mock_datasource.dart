import 'package:reimi_app/data/datasources/like_remote_datasource.dart';
import 'package:reimi_app/data/models/like_user_model.dart';
import 'package:reimi_app/domain/entities/like_entity.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class LikeMockDataSource implements LikeRemoteDataSource {
  const LikeMockDataSource();

  @override
  Future<List<LikeUserModel>?> getLikeUsersFromUser(String userId) async {
    return mockLikeUsersFromUser;
  }

  @override
  Future<List<LikeUserModel>?> getLikeUsersToUser(String userId) async {
    return mockLikeUsersToUser;
  }

  @override
  Future<bool> isLiked({required String fromUserId, required String toUserId}) {
    // TODO: implement isLiked
    throw UnimplementedError();
  }

  @override
  Future<LikeEntity> like(
      {required String fromUserId, required String toUserId}) {
    // TODO: implement like
    throw UnimplementedError();
  }
}

final List<LikeUserModel> mockLikeUsersFromUser = [
  // 佐藤 葵 (001) - あなたに「いいね」してくれたユーザー
  LikeUserModel(
    userId: 'user_001',
    birthDate: DateTime(1995, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
    lastLoginAt: DateTime.now().subtract(const Duration(hours: 2)),
  ),
  // 高橋 美咲 (004) - あなたに「いいね」してくれたユーザー
  LikeUserModel(
    userId: 'user_004',
    birthDate: DateTime(1988, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
    lastLoginAt: DateTime.now().subtract(const Duration(hours: 5)),
  ),
];

final List<LikeUserModel> mockLikeUsersToUser = [
  // 田中 健 (002) - あなたが「いいね」を送ったユーザー
  LikeUserModel(
    userId: 'user_002',
    birthDate: DateTime(1978, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
    lastLoginAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  // 渡辺 由美子 (006) - ログインが少し前のユーザー
  LikeUserModel(
    userId: 'user_006',
    birthDate: DateTime(1965, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
    lastLoginAt: DateTime.now().subtract(const Duration(days: 10)),
  ),
];
