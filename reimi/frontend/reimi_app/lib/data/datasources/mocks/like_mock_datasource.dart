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
    name: 'あおい',
    birthDate: DateTime(2001, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
    introduction: '都内でWebデザイナーをしています。休日はカフェ巡りや美術館に行くのが好きです。よろしくお願いします！',
    isTodayReported: true,
    typeImageUrl:
        Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
  ),
  // 高橋 美咲 (004) - あなたに「いいね」してくれたユーザー
  LikeUserDto(
    id: 'user_004',
    name: 'みさき',
    birthDate: DateTime(1997, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
    introduction: 'フリーランスでイラストを描いています。のんびりした性格です。美味しいご飯とお酒が大好きです。',
    isTodayReported: false,
    typeImageUrl:
        Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
  ),
];

final List<LikeUserDto> mockLikeUsersToUser = [
  // 田中 健 (002) - あなたが「いいね」を送ったユーザー
  LikeUserDto(
    id: 'user_002',
    name: 'けん',
    birthDate: DateTime(1992, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
    introduction: '大阪で経営をしています。仕事人間でしたが、最近は健康のためにゴルフを始めました。',
    isTodayReported: true,
    typeImageUrl:
        Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
  ),
  // 渡辺 由美子 (006) - ログインが少し前のユーザー
  LikeUserDto(
    id: 'user_006',
    name: 'みゆき',
    birthDate: DateTime(2002, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user003SampleImage.path,
    introduction: '落ち着いたお付き合いができる方を探しています。ガーデニングと海外旅行が趣味です。',
    isTodayReported: true,
    typeImageUrl:
        Assets.images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
  ),
];
