import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/firebase/firebase_auth_provider.dart';
import 'package:reimi_app/core/firebase/firebase_storage_provider.dart';
import 'package:reimi_app/data/datasources/auth_remote_datasource.dart';
import 'package:reimi_app/data/datasources/chat_room_remote_datasource.dart';
import 'package:reimi_app/data/datasources/like_remote_datasource.dart';
import 'package:reimi_app/data/datasources/message_remote_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/chat_room_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/like_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/message_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/profile_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/user_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/weather_report_mock_datasource.dart';
import 'package:reimi_app/data/datasources/profile_remote_datasource.dart';
import 'package:reimi_app/data/datasources/storage_remote_datasource.dart';
import 'package:reimi_app/data/datasources/user_remote_datasource.dart';
import 'package:reimi_app/data/datasources/weather_report_remote_datasource.dart';
import 'package:reimi_app/data/http/dio_client.dart';
import 'package:reimi_app/data/repositories/auth_repository_impl.dart';
import 'package:reimi_app/data/repositories/chat_room_repository_impl.dart';
import 'package:reimi_app/data/repositories/like_repository_impl.dart';
import 'package:reimi_app/data/repositories/message_repository_Impl.dart';
import 'package:reimi_app/data/repositories/profile_repository_impl.dart';
import 'package:reimi_app/data/repositories/storage_repository_impl.dart';
import 'package:reimi_app/data/repositories/user_repository_impl.dart';
import 'package:reimi_app/data/repositories/weather_report_repository_impl.dart';
import 'package:reimi_app/domain/repositories/auth_repository.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';
import 'package:reimi_app/domain/repositories/message_repository.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';
import 'package:reimi_app/domain/repositories/storage_repository.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_providers.g.dart';

const bool useMock = true;

// auth関連
@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl(ref.watch(firebaseAuthProvider));
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));
}

// user関連
@riverpod
UserRemoteDataSource userRemoteDataSource(Ref ref) {
  if (useMock) return const UserMockDataSource();
  return UserRemoteDataSourceImpl(ref.watch(dioClientProvider));
}

@riverpod
UserRepository userRepository(Ref ref) {
  return UserRepositoryImpl(ref.watch(userRemoteDataSourceProvider));
}

// profile関連
@riverpod
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  if (useMock) return const ProfileMockDataSource();
  return const ProfileRemoteDataSourceImpl();
}

@riverpod
ProfileRepository profileRepository(Ref ref) {
  return ProfileRepositoryImpl(ref.watch(profileRemoteDataSourceProvider));
}

// like関連
@riverpod
LikeRemoteDataSource likeRemoteDataSource(Ref ref) {
  if (useMock) return const LikeMockDataSource();
  return const LikeRemoteDataSourceImpl();
}

@riverpod
LikeRepository likeRepository(Ref ref) {
  return LikeRepositoryImpl(ref.watch(likeRemoteDataSourceProvider));
}

// chatRoom関連
@riverpod
ChatRoomRemoteDataSource chatRoomRemoteDataSource(Ref ref) {
  if (useMock) return const ChatRoomMockDataSource();
  return const ChatRoomRemoteDataSourceImpl();
}

@riverpod
ChatRoomRepository chatRoomRepository(Ref ref) {
  return ChatRoomRepositoryImpl(ref.watch(chatRoomRemoteDataSourceProvider));
}

// message関連
@riverpod
MessageRemoteDataSource messageRemoteDataSource(Ref ref) {
  if (useMock) return const MessageMockDataSource();
  return const MessageRemoteDataSourceImpl();
}

@riverpod
MessageRepository messageRepository(Ref ref) {
  return MessageRepositoryImpl(ref.watch(messageRemoteDataSourceProvider));
}

// weather_report関連
@riverpod
WeatherReportRemoteDataSource weatherReportRemoteDataSource(Ref ref) {
  if (useMock) return const WeatherReportMockDataSource();
  return const WeatherReportRemoteDataSourceImpl();
}

@riverpod
WeatherReportRepository weatherReportRepository(Ref ref) {
  return WeatherReportRepositoryImpl(
      ref.watch(weatherReportRemoteDataSourceProvider));
}

// storage関連
@riverpod
StorageRemoteDataSource storageRemoteDataSource(Ref ref) {
  return StorageRemoteDataSourceImpl(ref.watch(firebaseStorageProvider));
}

@riverpod
StorageRepository storageRepository(Ref ref) {
  return StorageRepositoryImpl(ref.watch(storageRemoteDataSourceProvider));
}
