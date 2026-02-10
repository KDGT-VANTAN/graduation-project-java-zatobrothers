import 'package:reimi_app/data/datasources/remote/rainbow_like_remote_datasource.dart';
import 'package:reimi_app/data/dtos/rainbow_like_user_dto.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class RainbowLikeMockDataSource implements RainbowLikeRemoteDataSource {
  const RainbowLikeMockDataSource();

  @override
  Future<List<RainbowLikeUserDto>> fetchRainbowLikeUsersFromUser() async {
    return mockRainbowLikeUsersFromUser;
  }

  @override
  Future<List<RainbowLikeUserDto>> fetchRainbowLikeUsersToUser() async {
    return mockRainbowLikeUsersToUser;
  }

  @override
  Future<void> rainbowlikeUser({
    required String userId,
    required String message,
  }) async {
    return;
  }
}

final List<RainbowLikeUserDto> mockRainbowLikeUsersFromUser = [
  RainbowLikeUserDto(
    id: 'user_001',
    name: 'あおい',
    birthDate: DateTime(2001, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
    introduction: '都内でWebデザイナーをしています。休日はカフェ巡りや美術館に行くのが好きです。よろしくお願いします！',
    message: "私もアウトドア派です！お出かけするとしたら、どこに行かれることが多いですか？",
    isTodayReported: true,
    typeImageUrl:
        Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
  ),
  RainbowLikeUserDto(
    id: 'user_004',
    name: 'みさき',
    birthDate: DateTime(1997, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
    introduction: 'フリーランスでイラストを描いています。のんびりした性格です。美味しいご飯とお酒が大好きです。',
    message: '私も美味しいごはん屋さん開拓するのハマってます！よかったらお話ししませんか？',
    isTodayReported: false,
    typeImageUrl:
        Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
  ),
];

final List<RainbowLikeUserDto> mockRainbowLikeUsersToUser = [
  RainbowLikeUserDto(
    id: 'user_002',
    name: 'けん',
    birthDate: DateTime(1992, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
    introduction: '大阪で経営をしています。仕事人間でしたが、最近は健康のためにゴルフを始めました。',
    message: 'ゴルフいいですね！自分も最近ゴルフ始めたので、よかったら話しませんか？',
    isTodayReported: true,
    typeImageUrl:
        Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
  ),
  RainbowLikeUserDto(
    id: 'user_006',
    name: 'みゆき',
    birthDate: DateTime(2002, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user003SampleImage.path,
    introduction: '落ち着いたお付き合いができる方を探しています。ガーデニングと海外旅行が趣味です。',
    message: '海外旅行よく行かれるんですね！どこの国がお好きなんですか？',
    isTodayReported: true,
    typeImageUrl:
        Assets.images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
  ),
];
