import 'package:reimi_app/data/datasources/remote/profile_remote_datasource.dart';
import 'package:reimi_app/data/dtos/update_profile_dto.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class ProfileMockDataSource implements ProfileRemoteDataSource {
  const ProfileMockDataSource();

  @override
  Future<UserWithProfileReadModel> fetchUserProfile(String userId) async {
    // 仮実装
    for (var userProfile in mockUserProfiles) {
      if (userProfile.id == userId) {
        return userProfile;
      }
    }
    return mockUserProfiles[0];
  }

  @override
  Future<void> updateUserProfile({
    required UpdateProfileDto dto,
    required String userId,
  }) async {}
}

final List<UserWithProfileReadModel> mockUserProfiles = [
  // user_001: 佐藤 葵
  UserWithProfileReadModel(
    id: 'user_001',
    name: '佐藤 葵',
    gender: Gender.woman,
    birthDate: DateTime(1995, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
    introduction: '都内でWebデザイナーをしています。休日はカフェ巡りや美術館に行くのが好きです。よろしくお願いします！',
    height: Height.just160cm,
    bodyShape: BodyShape.normal,
    annualIncome: AnnualIncome.between4And6M,
    bloodType: BloodType.a,
    hometown: Address.tokyo,
    communicationStyle: CommunicationStyle.inPerson,
    occupation: Occupation.officeWork,
    education: Education.universityGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.yes,
    holiday: Holiday.weekend,
    sunnyDayHobbies: ['カフェ巡り', 'カメラ', 'ヨガ'],
    rainyDayHobbies: ['映画鑑賞', '料理', '読書'],
    subPhotos: [],
    isTodayReported: false,
  ),

  // user_002: 田中 健
  UserWithProfileReadModel(
    id: 'user_002',
    name: '田中 健',
    gender: Gender.man,
    birthDate: DateTime(1978, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
    introduction: '大阪で経営をしています。仕事人間でしたが、最近は健康のためにゴルフを始めました。',
    height: Height.just171cm,
    bodyShape: BodyShape.normal,
    annualIncome: AnnualIncome.between10And15M,
    bloodType: BloodType.o,
    hometown: Address.osaka,
    communicationStyle: CommunicationStyle.inPerson,
    occupation: Occupation.advertising,
    education: Education.universityGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.yes,
    holiday: Holiday.irregular,
    sunnyDayHobbies: ['ゴルフ', 'ドライブ', ''],
    rainyDayHobbies: ['ワイン', 'ジャズ鑑賞', ''],
    subPhotos: [],
    isTodayReported: true,
  ),

  // user_003: 鈴木 翔太
  UserWithProfileReadModel(
    id: 'user_003',
    name: '鈴木 翔太',
    gender: Gender.man,
    birthDate: DateTime(2001, 3, 22),
    address: Address.aichi,
    mainPhotoUrl: Assets.images.sample.user003SampleImage.path,
    introduction: 'エンジニアを目指して勉強中です！最近はキャンプにハマっています。一緒に盛り上がれる友達募集中です。',
    height: Height.just182cm,
    bodyShape: BodyShape.slim,
    annualIncome: AnnualIncome.between2And4M,
    bloodType: BloodType.b,
    hometown: Address.aichi,
    communicationStyle: CommunicationStyle.message,
    occupation: Occupation.engineer,
    education: Education.technicalCollegeGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.sometimes,
    holiday: Holiday.weekday,
    sunnyDayHobbies: ['キャンプ', 'サウナ', 'スケボー'],
    rainyDayHobbies: ['ゲーム', 'アニメ', 'プログラミング'],
    subPhotos: [
      'https://cypher.urashico2.com/blog/wp-content/uploads/2024/01/231225_015.jpg',
      'https://future-architect.github.io/images/2021/20210513a/IMG_0030.jpg',
      'https://www.snowpeak.co.jp/mag-spw/wp-content/uploads/2020/08/%E3%83%89%E3%83%83%E3%82%AD%E3%83%B3%E3%82%B0-2-2400x1600.jpg',
    ],
    isTodayReported: true,
  ),

  // user_004: 高橋 美咲
  UserWithProfileReadModel(
    id: 'user_004',
    name: '高橋 美咲',
    gender: Gender.woman,
    birthDate: DateTime(1988, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
    introduction: 'フリーランスでイラストを描いています。のんびりした性格です。美味しいご飯とお酒が大好きです。',
    height: Height.just155cm,
    bodyShape: BodyShape.chubby,
    annualIncome: AnnualIncome.between4And6M,
    bloodType: BloodType.ab,
    hometown: Address.fukuoka,
    communicationStyle: CommunicationStyle.call,
    occupation: Occupation.freelance,
    education: Education.juniorCollegeGraduate,
    smoking: Smoking.sometimes,
    alcohol: Alcohol.yes,
    holiday: Holiday.weekday,
    sunnyDayHobbies: ['食べ歩き', '旅行', ''],
    rainyDayHobbies: ['イラスト', '猫と遊ぶ', 'ネットフリックス'],
    subPhotos: [],
    isTodayReported: false,
  ),

  // user_005: 伊藤 健太
  UserWithProfileReadModel(
    id: 'user_005',
    name: '伊藤 健太',
    gender: Gender.man,
    birthDate: DateTime(1996, 9, 5),
    address: Address.hokkaido,
    mainPhotoUrl: Assets.images.sample.user005SampleImage.path,
    introduction: '北海道の大自然の中で育ちました。冬はスキー、夏はハイキングをしています。アクティブな方が好きです！',
    height: Height.just170cm,
    bodyShape: BodyShape.muscular,
    annualIncome: AnnualIncome.between4And6M,
    bloodType: BloodType.a,
    hometown: Address.hokkaido,
    communicationStyle: CommunicationStyle.message,
    occupation: Occupation.officeWork,
    education: Education.universityGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.yes,
    holiday: Holiday.weekday,
    sunnyDayHobbies: ['スキー', '登山', '釣り'],
    rainyDayHobbies: ['筋トレ', '読書', ''],
    subPhotos: [],
    isTodayReported: true,
  ),

  // user_006: 渡辺 由美子
  UserWithProfileReadModel(
    id: 'user_006',
    name: '渡辺 由美子',
    gender: Gender.woman,
    birthDate: DateTime(1965, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
    introduction: '落ち着いたお付き合いができる方を探しています。ガーデニングと海外旅行が趣味です。',
    height: Height.just163cm,
    bodyShape: BodyShape.normal,
    annualIncome: AnnualIncome.between6And8M,
    bloodType: BloodType.o,
    hometown: Address.tokyo,
    communicationStyle: CommunicationStyle.call,
    occupation: Occupation.nurse,
    education: Education.universityGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.no,
    holiday: Holiday.weekday,
    sunnyDayHobbies: ['ガーデニング', '散歩', ''],
    rainyDayHobbies: ['ピアノ', '刺繍', ''],
    subPhotos: [],
    isTodayReported: false,
  ),

  // user_000: 山田 涼介
  UserWithProfileReadModel(
    id: 'user_000',
    name: '山田 涼介',
    gender: Gender.man,
    birthDate: DateTime(1993, 5, 9),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
    introduction:
        '都内でITコンサルタントとして働いています。仕事は忙しいですが、オンとオフはしっかり切り替えるタイプです。休日は趣味のドライブや、話題のレストランを開拓するのが好きです。',
    height: Height.just164cm,
    bodyShape: BodyShape.normal,
    annualIncome: AnnualIncome.between20And30M,
    bloodType: BloodType.b,
    hometown: Address.tokyo,
    communicationStyle: CommunicationStyle.inPerson,
    occupation: Occupation.consulting,
    education: Education.universityGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.yes,
    holiday: Holiday.weekend,
    sunnyDayHobbies: ['ドライブ', '食べ歩き', 'フットサル'],
    rainyDayHobbies: ['映画鑑賞', '料理', 'YouTube視聴'],
    subPhotos: [],
    isTodayReported: true,
  ),

  // chat_user_001: さくら
  UserWithProfileReadModel(
    id: 'chat_user_001',
    name: 'さくら',
    gender: Gender.woman,
    birthDate: DateTime(2000, 4, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.chatUser001SampleImage.path,
    introduction: 'アパレル店員をしています！休日はよくショッピングに行ったり、新作のスイーツをチェックしたりしています🍰',
    height: Height.just158cm,
    bodyShape: BodyShape.slim,
    annualIncome: AnnualIncome.between2And4M,
    bloodType: BloodType.a,
    hometown: Address.kanagawa,
    communicationStyle: CommunicationStyle.message,
    occupation: Occupation.apparel,
    education: Education.juniorCollegeGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.sometimes,
    holiday: Holiday.weekday,
    sunnyDayHobbies: ['ショッピング', 'カフェ巡り', ''],
    rainyDayHobbies: ['雑誌を読む', 'SNSチェック', ''],
    subPhotos: [],
    isTodayReported: true,
  ),

  // chat_user_002: ゆうき
  UserWithProfileReadModel(
    id: 'chat_user_002',
    name: 'ゆうき',
    gender: Gender.man,
    birthDate: DateTime(1997, 8, 20),
    address: Address.kanagawa,
    mainPhotoUrl: Assets.images.sample.chatUser002SampleImage.path,
    introduction: 'メーカーで営業をしています。スポーツが好きで、週末はフットサルをしたりジムに行ったりしています！',
    height: Height.just175cm,
    bodyShape: BodyShape.muscular,
    annualIncome: AnnualIncome.between4And6M,
    bloodType: BloodType.o,
    hometown: Address.shizuoka,
    communicationStyle: CommunicationStyle.inPerson,
    occupation: Occupation.manufacturer,
    education: Education.universityGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.yes,
    holiday: Holiday.weekend,
    sunnyDayHobbies: ['フットサル', 'ランニング', ''],
    rainyDayHobbies: ['筋トレ', '映画鑑賞', ''],
    subPhotos: [],
    isTodayReported: true,
  ),

  // chat_user_003: あおい
  UserWithProfileReadModel(
    id: 'chat_user_003',
    name: 'あおい',
    gender: Gender.woman,
    birthDate: DateTime(2002, 11, 10),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.chatUser003SampleImage.path,
    introduction: '大学院でデザインの勉強をしています🎨 食べることが大好きで、特に美味しいラーメン屋さんを探すのが趣味です！',
    height: Height.just162cm,
    bodyShape: BodyShape.normal,
    annualIncome: AnnualIncome.between2And4M,
    bloodType: BloodType.b,
    hometown: Address.hyogo,
    communicationStyle: CommunicationStyle.call,
    occupation: Occupation.universityStudent,
    education: Education.universityGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.sometimes,
    holiday: Holiday.irregular,
    sunnyDayHobbies: ['美術館巡り', '食べ歩き', ''],
    rainyDayHobbies: ['イラスト', '自炊', ''],
    subPhotos: [],
    isTodayReported: false,
  ),

  // chat_user_004: りく
  UserWithProfileReadModel(
    id: 'chat_user_004',
    name: 'りく',
    gender: Gender.man,
    birthDate: DateTime(1995, 2, 5),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.chatUser004SampleImage.path,
    introduction: 'エンジニアをしています。最近はキャンプギアを揃えるのにハマっています。焚き火を見ながらゆっくりするのが好きです。',
    height: Height.just180cm,
    bodyShape: BodyShape.normal,
    annualIncome: AnnualIncome.between6And8M,
    bloodType: BloodType.ab,
    hometown: Address.nagano,
    communicationStyle: CommunicationStyle.message,
    occupation: Occupation.engineer,
    education: Education.universityGraduate,
    smoking: Smoking.sometimes,
    alcohol: Alcohol.yes,
    holiday: Holiday.weekend,
    sunnyDayHobbies: ['キャンプ', 'ドライブ', ''],
    rainyDayHobbies: ['ガジェット収集', 'プログラミング', ''],
    subPhotos: [],
    isTodayReported: false,
  ),

  // chat_user_005: みお
  UserWithProfileReadModel(
    id: 'chat_user_005',
    name: 'みお',
    gender: Gender.woman,
    birthDate: DateTime(1999, 6, 25),
    address: Address.chiba,
    mainPhotoUrl: Assets.images.sample.chatUser005SampleImage.path,
    introduction: '看護師をしています💉 忙しい毎日ですが、休日はディズニーランドに行ってリフレッシュしています！',
    height: Height.just155cm,
    bodyShape: BodyShape.normal,
    annualIncome: AnnualIncome.between4And6M,
    bloodType: BloodType.a,
    hometown: Address.chiba,
    communicationStyle: CommunicationStyle.call,
    occupation: Occupation.nurse,
    education: Education.juniorCollegeGraduate,
    smoking: Smoking.no,
    alcohol: Alcohol.no,
    holiday: Holiday.irregular,
    sunnyDayHobbies: ['ディズニー', '散歩', ''],
    rainyDayHobbies: ['ヨガ', 'ドラマ鑑賞', ''],
    subPhotos: [],
    isTodayReported: false,
  ),
];
