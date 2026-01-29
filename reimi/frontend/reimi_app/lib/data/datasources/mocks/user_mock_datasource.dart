import 'package:reimi_app/data/datasources/remote/user_remote_datasource.dart';
import 'package:reimi_app/data/dtos/app_user_dto.dart';
import 'package:reimi_app/data/dtos/create_user_dto.dart';
import 'package:reimi_app/data/dtos/home_user_dto.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class UserMockDataSource implements UserRemoteDataSource {
  const UserMockDataSource();

  @override
  Future<List<HomeUserDto>> fetchHomeUsers() async {
    return mockHomeUsers;
  }

  @override
  Future<AppUserDto> fetchCurrentUser() async {
    return mockUser;
  }

  @override
  Future<bool> createUser(CreateUserDto dto) {
    throw UnimplementedError();
  }
}

// モックデータ
final mockUser = AppUserDto(
  id: 'user_000',
  name: 'メンダコ',
  gender: Gender.man,
  birthDate: DateTime(2004, 5, 21),
  address: Address.tokyo,
  email: 'mendako@gmail.com',
  status: UserStatus.active,
);

final List<HomeUserDto> mockHomeUsers = [
  // user_001: 佐藤 葵
  HomeUserDto(
    id: 'user_001',
    name: '佐藤 葵',
    birthDate: DateTime(2001, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.newUser000SampleImage.path,
    introduction: '都内でWebデザイナーをしています。休日はカフェ巡りや美術館に行くのが好きです。よろしくお願いします！',
    isTodayReported: true,
    typeCharacterImageUrl:
        Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
  ),

  // user_003: 鈴木 翔太
  HomeUserDto(
    id: 'user_003',
    name: '鈴木 翔太',
    birthDate: DateTime(2000, 3, 22),
    address: Address.aichi,
    mainPhotoUrl: Assets.images.sample.newUser001SampleImage.path,
    introduction: 'エンジニアを目指して勉強中です！最近はキャンプにハマっています。一緒に盛り上がれる友達募集中です。',
    isTodayReported: false,
    typeCharacterImageUrl:
        Assets.images.weatherPersonality.sporPerfectionistLionImage.path,
  ),

  // user_002: 田中 健
  HomeUserDto(
    id: 'user_002',
    name: '田中 健',
    birthDate: DateTime(1992, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.newUser002SampleImage.path,
    introduction: '大阪で経営をしています。仕事人間でしたが、最近は健康のためにゴルフを始めました。',
    isTodayReported: true,
    typeCharacterImageUrl:
        Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
  ),

  // user_006: 渡辺 由美子
  HomeUserDto(
    id: 'user_006',
    name: '渡辺 由美子',
    birthDate: DateTime(2002, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.newUser003SampleImage.path,
    introduction: '落ち着いたお付き合いができる方を探しています。ガーデニングと海外旅行が趣味です。',
    isTodayReported: true,
    typeCharacterImageUrl:
        Assets.images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
  ),

  // user_004: 高橋 美咲
  HomeUserDto(
    id: 'user_004',
    name: '高橋 美咲',
    birthDate: DateTime(1997, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.newUser004SampleImage.path,
    introduction: 'フリーランスでイラストを描いています。のんびりした性格です。美味しいご飯とお酒が大好きです。',
    isTodayReported: false,
    typeCharacterImageUrl:
        Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
  ),

  // user_005: 伊藤 健太
  HomeUserDto(
    id: 'user_005',
    name: '伊藤 健太',
    birthDate: DateTime(1996, 9, 5),
    address: Address.hokkaido,
    mainPhotoUrl: Assets.images.sample.newUser005SampleImage.path,
    introduction: '北海道の大自然の中で育ちました。冬はスキー、夏はハイキングをしています。アクティブな方が好きです！',
    isTodayReported: true,
    typeCharacterImageUrl:
        Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
  ),

  // user_000: 山田 涼介
  HomeUserDto(
    id: 'user_000',
    name: '山田 涼介',
    birthDate: DateTime(1993, 5, 9),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
    introduction:
        '都内でITコンサルタントとして働いています。仕事は忙しいですが、オンとオフはしっかり切り替えるタイプです。休日は趣味のドライブや、話題のレストランを開拓するのが好きです。',
    isTodayReported: true,
  ),
];
