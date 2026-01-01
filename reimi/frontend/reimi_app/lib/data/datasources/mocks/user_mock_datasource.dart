import 'package:reimi_app/data/datasources/user_remote_datasource.dart';
import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class UserMockDataSource implements UserRemoteDataSource {
  const UserMockDataSource();

  @override
  Future<List<UserEntity>> fetchUsers() async {
    return mockUsers;
  }

  @override
  Future<UserEntity?> fetchUser(String userId) async {
    // 仮実装
    for (var user in mockUsers) {
      if (user.id == userId) {
        return user;
      }
    }
    return null;
  }
}

// モックデータ
final List<UserEntity> mockUsers = [
  UserEntity(
    id: 'user_001',
    firebaseUid: 'fb_uid_1234567890',
    name: '佐藤 葵',
    gender: Gender.woman,
    birthDate: DateTime(1995, 5, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
    email: 'aoi.sato@example.com',
    lastLoginAt: DateTime.now().subtract(const Duration(hours: 2)),
    createdAt: DateTime(2023, 1, 10),
    updatedAt: DateTime(2023, 10, 25),
    status: UserStatus.active,
  ),
  UserEntity(
    id: 'user_002',
    firebaseUid: 'fb_uid_0987654321',
    name: '田中 健',
    gender: Gender.man,
    birthDate: DateTime(1978, 11, 3),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
    email: 'ken.tanaka@example.com',
    lastLoginAt: DateTime.now().subtract(const Duration(days: 1)),
    createdAt: DateTime(2022, 5, 20),
    updatedAt: DateTime(2023, 8, 15),
    status: UserStatus.active,
  ),
  UserEntity(
    id: 'user_003',
    firebaseUid: 'fb_uid_1122334455',
    name: '鈴木 翔太',
    gender: Gender.man,
    birthDate: DateTime(2001, 3, 22),
    address: Address.aichi,
    mainPhotoUrl: Assets.images.sample.user003SampleImage.path,
    email: 'shota.suzuki@example.com',
    lastLoginAt: DateTime.now().subtract(const Duration(minutes: 30)),
    createdAt: DateTime(2023, 9, 1),
    updatedAt: DateTime(2023, 9, 1),
    status: UserStatus.active,
  ),
  UserEntity(
    id: 'user_004',
    firebaseUid: 'fb_uid_6677889900',
    name: '高橋 美咲',
    gender: Gender.woman,
    birthDate: DateTime(1988, 7, 12),
    address: Address.fukuoka,
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
    email: 'misaki.takahashi@example.com',
    lastLoginAt: DateTime.now().subtract(const Duration(hours: 5)),
    createdAt: DateTime(2023, 11, 15),
    updatedAt: DateTime(2023, 11, 15),
    status: UserStatus.active,
  ),
  UserEntity(
    id: 'user_005',
    firebaseUid: 'fb_uid_5544332211',
    name: '伊藤 健太',
    gender: Gender.man,
    birthDate: DateTime(1996, 9, 5),
    address: Address.hokkaido,
    mainPhotoUrl: Assets.images.sample.user005SampleImage.path,
    email: 'kenta.ito@example.com',
    lastLoginAt: DateTime.now().subtract(const Duration(days: 3)),
    createdAt: DateTime(2024, 1, 20),
    updatedAt: DateTime(2024, 2, 10),
    status: UserStatus.active,
  ),
  UserEntity(
    id: 'user_006',
    firebaseUid: 'fb_uid_9988776655',
    name: '渡辺 由美子',
    gender: Gender.woman,
    birthDate: DateTime(1965, 2, 28),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
    email: 'yumiko.watanabe@example.com',
    lastLoginAt: DateTime.now().subtract(const Duration(hours: 1)),
    createdAt: DateTime(2022, 12, 1),
    updatedAt: DateTime(2023, 6, 30),
    status: UserStatus.active,
  ),
  UserEntity(
    id: 'user_000',
    firebaseUid: 'fb_uid_0000000000',
    name: '山田 涼介',
    gender: Gender.man,
    birthDate: DateTime(1993, 5, 9),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
    email: 'ryousuke.yamada@example.com',
    lastLoginAt: DateTime.now().subtract(const Duration(hours: 1)),
    createdAt: DateTime(2022, 12, 1),
    updatedAt: DateTime(2023, 6, 30),
    status: UserStatus.active,
  ),
];

final UserEntity mockUser = UserEntity(
  id: 'user_000',
  firebaseUid: 'fb_uid_0000000000',
  name: '山田 涼介',
  gender: Gender.man,
  birthDate: DateTime(1993, 5, 9),
  address: Address.tokyo,
  mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
  email: 'ryousuke.yamada@example.com',
  lastLoginAt: DateTime.now().subtract(const Duration(hours: 1)),
  createdAt: DateTime(2022, 12, 1),
  updatedAt: DateTime(2023, 6, 30),
  status: UserStatus.active,
);
