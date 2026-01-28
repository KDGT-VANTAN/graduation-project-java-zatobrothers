import 'package:reimi_app/data/datasources/remote/like_remote_datasource.dart';
import 'package:reimi_app/data/dtos/like_user_dto.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class LikeMockDataSource implements LikeRemoteDataSource {
  const LikeMockDataSource();

  @override
  Future<List<LikeUserDto>> fetchLikeUsersFromUser() async {
    return mockLikeUsersFromUser;
  }

  @override
  Future<List<LikeUserDto>> fetchLikeUsersToUser() async {
    return mockLikeUsersToUser;
  }

  @override
  Future<void> likeUser(String userId) async {
    return;
  }
}

final List<LikeUserDto> mockLikeUsersFromUser = [
  // 佐藤 葵 (001) - あなたに「いいね」してくれたユーザー
  LikeUserDto(
    id: 'user_001',
    name: '佐藤 葵',
    birthDate: DateTime(1995, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
    introduction: '都内でWebデザイナーをしています。休日はカフェ巡りや美術館に行くのが好きです。よろしくお願いします！',
  ),
  // 高橋 美咲 (004) - あなたに「いいね」してくれたユーザー
  LikeUserDto(
    id: 'user_004',
    name: '高橋 美咲',
    birthDate: DateTime(1988, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
    introduction: 'フリーランスでイラストを描いています。のんびりした性格です。美味しいご飯とお酒が大好きです。',
  ),
];

final List<LikeUserDto> mockLikeUsersToUser = [
  // 田中 健 (002) - あなたが「いいね」を送ったユーザー
  LikeUserDto(
    id: 'user_002',
    name: '田中 健',
    birthDate: DateTime(1978, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
    introduction: '大阪で経営をしています。仕事人間でしたが、最近は健康のためにゴルフを始めました。',
  ),
  // 渡辺 由美子 (006) - ログインが少し前のユーザー
  LikeUserDto(
    id: 'user_006',
    name: '渡辺 由美子',
    birthDate: DateTime(1965, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
    introduction: '落ち着いたお付き合いができる方を探しています。ガーデニングと海外旅行が趣味です。',
  ),
];
