import 'package:reimi_app/data/datasources/profile_remote_datasource.dart';
import 'package:reimi_app/domain/entities/profile_entity.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';

class ProfileMockDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileMockDataSourceImpl();

  @override
  Future<List<ProfileEntity>> fetchProfiles(List<String> userIds) async {
    return mockProfiles;
  }

  @override
  Future<ProfileEntity?> fetchProfile(String userId) async {
    // 仮実装
    for (var profile in mockProfiles) {
      if (profile.userId == userId) {
        return profile;
      }
    }
    return null;
  }
}

final List<ProfileEntity> mockProfiles = [
  // user_001: 佐藤 葵 (20代後半・東京)
  ProfileEntity(
    id: 'prof_001',
    userId: 'user_001',
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
    createdAt: DateTime(2023, 1, 10),
  ),

  // user_002: 田中 健 (40代後半・大阪)
  ProfileEntity(
    id: 'prof_002',
    userId: 'user_002',
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
    createdAt: DateTime(2022, 5, 20),
  ),

  // user_003: 鈴木 翔太 (20代前半・愛知)
  ProfileEntity(
    id: 'prof_003',
    userId: 'user_003',
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
    createdAt: DateTime(2023, 9, 1),
  ),

  // user_004: 高橋 美咲 (30代半ば・福岡)
  ProfileEntity(
    id: 'prof_004',
    userId: 'user_004',
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
    createdAt: DateTime(2023, 11, 15),
  ),

  // user_005: 伊藤 健太 (20代後半・北海道)
  ProfileEntity(
    id: 'prof_005',
    userId: 'user_005',
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
    createdAt: DateTime(2024, 1, 20),
  ),

  // user_006: 渡辺 由美子 (50代後半・東京)
  ProfileEntity(
    id: 'prof_006',
    userId: 'user_006',
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
    createdAt: DateTime(2022, 12, 1),
  ),
  ProfileEntity(
    id: 'prof_000',
    userId: 'user_000',
    introduction:
        '都内でITコンサルタントとして働いています。仕事は忙しいですが、オンとオフはしっかり切り替えるタイプです。休日は趣味のドライブや、話題のレストランを開拓するのが好きです。落ち着いた関係を築ける方と出会えれば嬉しいです！',
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
    createdAt: DateTime(2022, 12, 1),
    updatedAt: DateTime(2023, 6, 30),
  ),
];
