import 'package:reimi_app/data/datasources/remote/like_remote_datasource.dart';
import 'package:reimi_app/domain/entities/like_entity.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class LikeMockDataSource implements LikeRemoteDataSource {
  const LikeMockDataSource();

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersFromUser() async {
    return mockLikeUsersFromUser;
  }

  @override
  Future<List<LikeUserReadModel>> fetchLikeUsersToUser() async {
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

final List<LikeUserReadModel> mockLikeUsersFromUser = [
  // 佐藤 葵 (001) - あなたに「いいね」してくれたユーザー
  LikeUserReadModel(
    id: 'user_001',
    name: '佐藤 葵',
    birthDate: DateTime(1995, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
  ),
  // 高橋 美咲 (004) - あなたに「いいね」してくれたユーザー
  LikeUserReadModel(
    id: 'user_004',
    name: '高橋 美咲',
    birthDate: DateTime(1988, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
  ),
];

final List<LikeUserReadModel> mockLikeUsersToUser = [
  // 田中 健 (002) - あなたが「いいね」を送ったユーザー
  LikeUserReadModel(
    id: 'user_002',
    name: '田中 健',
    birthDate: DateTime(1978, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
  ),
  // 渡辺 由美子 (006) - ログインが少し前のユーザー
  LikeUserReadModel(
    id: 'user_006',
    name: '渡辺 由美子',
    birthDate: DateTime(1965, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
  ),
];
