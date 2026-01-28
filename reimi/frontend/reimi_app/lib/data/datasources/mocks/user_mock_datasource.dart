import 'package:reimi_app/data/datasources/remote/user_remote_datasource.dart';
import 'package:reimi_app/data/dtos/create_user_dto.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';
import 'package:reimi_app/domain/read_models/home_user_read_model.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class UserMockDataSource implements UserRemoteDataSource {
  const UserMockDataSource();

  @override
  Future<List<HomeUserReadModel>> fetchHomeUsers() async {
    return mockHomeUsers;
  }

  @override
  Future<AppUserReadModel> fetchCurrentUser() async {
    return mockUser;
  }

  @override
  Future<bool> createUser(CreateUserDto dto) {
    throw UnimplementedError();
  }
}

// モックデータ
final mockUser = AppUserReadModel(
  id: 'user_000',
  name: 'メンダコ',
  gender: Gender.man,
  birthDate: DateTime(2004, 5, 21),
  address: Address.tokyo,
  email: 'mendako@gmail.com',
  status: UserStatus.active,
);

final List<HomeUserReadModel> mockHomeUsers = [
  // user_003: 鈴木 翔太
  HomeUserReadModel(
    id: 'user_003',
    name: '鈴木 翔太',
    birthDate: DateTime(2001, 3, 22),
    address: Address.aichi,
    mainPhotoUrl: Assets.images.sample.user003SampleImage.path,
    introduction: 'エンジニアを目指して勉強中です！最近はキャンプにハマっています。一緒に盛り上がれる友達募集中です。',
    isTodayReported: false,
  ),

  // user_001: 佐藤 葵
  HomeUserReadModel(
    id: 'user_001',
    name: '佐藤 葵',
    birthDate: DateTime(1995, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
    introduction: '都内でWebデザイナーをしています。休日はカフェ巡りや美術館に行くのが好きです。よろしくお願いします！',
    isTodayReported: false,
  ),

  // user_006: 渡辺 由美子
  HomeUserReadModel(
    id: 'user_006',
    name: '渡辺 由美子',
    birthDate: DateTime(1965, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
    introduction: '落ち着いたお付き合いができる方を探しています。ガーデニングと海外旅行が趣味です。',
    isTodayReported: false,
  ),

  // user_005: 伊藤 健太
  HomeUserReadModel(
    id: 'user_005',
    name: '伊藤 健太',
    birthDate: DateTime(1996, 9, 5),
    address: Address.hokkaido,
    mainPhotoUrl: Assets.images.sample.user005SampleImage.path,
    introduction: '北海道の大自然の中で育ちました。冬はスキー、夏はハイキングをしています。アクティブな方が好きです！',
    isTodayReported: true,
  ),

  // user_002: 田中 健
  HomeUserReadModel(
    id: 'user_002',
    name: '田中 健',
    birthDate: DateTime(1978, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
    introduction: '大阪で経営をしています。仕事人間でしたが、最近は健康のためにゴルフを始めました。',
    isTodayReported: true,
  ),

  // user_000: 山田 涼介
  HomeUserReadModel(
    id: 'user_000',
    name: '山田 涼介',
    birthDate: DateTime(1993, 5, 9),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
    introduction:
        '都内でITコンサルタントとして働いています。仕事は忙しいですが、オンとオフはしっかり切り替えるタイプです。休日は趣味のドライブや、話題のレストランを開拓するのが好きです。',
    isTodayReported: true,
  ),

  // user_004: 高橋 美咲
  HomeUserReadModel(
    id: 'user_004',
    name: '高橋 美咲',
    birthDate: DateTime(1988, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
    introduction: 'フリーランスでイラストを描いています。のんびりした性格です。美味しいご飯とお酒が大好きです。',
    isTodayReported: false,
  ),
];
