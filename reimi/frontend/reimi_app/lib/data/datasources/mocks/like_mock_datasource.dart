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
  LikeUserDto(
    id: 'user_003',
    name: 'しょうた',
    birthDate: DateTime(2000, 3, 22),
    address: Address.aichi,
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
    introduction: 'エンジニアを目指して勉強中です！最近はキャンプにハマっています。一緒に盛り上がれる友達募集中です。',
    isTodayReported: false,
    typeImageUrl:
        Assets.images.weatherPersonality.sporPerfectionistLionImage.path,
  ),
  LikeUserDto(
    id: 'chat_user_001',
    name: 'さくら',
    birthDate: DateTime(2000, 4, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.chatUser001SampleImage.path,
    introduction: 'アパレル店員をしています！休日はよくショッピングに行ったり、新作のスイーツをチェックしたりしています🍰',
    isTodayReported: false,
    typeImageUrl:
        Assets.images.weatherPersonality.npoeDolphinsInTheAquariumImage.path,
  ),
];

final List<LikeUserDto> mockLikeUsersToUser = [
  LikeUserDto(
    id: 'chat_user_005',
    name: 'みお',
    birthDate: DateTime(1999, 6, 25),
    address: Address.chiba,
    mainPhotoUrl: Assets.images.sample.chatUser005SampleImage.path,
    introduction: '看護師をしています💉 忙しい毎日ですが、休日はディズニーランドに行ってリフレッシュしています！',
    isTodayReported: false,
    typeImageUrl: Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
  ),
  LikeUserDto(
    id: 'user_005',
    name: 'けんた',
    birthDate: DateTime(1996, 9, 5),
    address: Address.hokkaido,
    mainPhotoUrl: Assets.images.sample.user005SampleImage.path,
    introduction: '北海道の大自然の中で育ちました。冬はスキー、夏はハイキングをしています。アクティブな方が好きです！',
    isTodayReported: true,
    typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
  ),
];
