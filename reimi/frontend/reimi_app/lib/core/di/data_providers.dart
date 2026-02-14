import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/firebase/firebase_auth_provider.dart';
import 'package:reimi_app/core/firebase/firebase_storage_provider.dart';
import 'package:reimi_app/data/datasources/mocks/rainbow_like_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/weather_personality_mock_datasource.dart';
import 'package:reimi_app/data/datasources/remote/auth_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/chat_room_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/like_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/message_remote_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/chat_room_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/like_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/message_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/profile_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/user_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/weather_report_mock_datasource.dart';
import 'package:reimi_app/data/datasources/remote/notification_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/profile_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/rainbow_like_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/storage_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/user_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/weather_personality_remote_datasource.dart';
import 'package:reimi_app/data/datasources/remote/weather_report_remote_datasource.dart';
import 'package:reimi_app/data/http/dio_client.dart';
import 'package:reimi_app/data/repositories/auth_repository_impl.dart';
import 'package:reimi_app/data/repositories/chat_room_repository_impl.dart';
import 'package:reimi_app/data/repositories/like_repository_impl.dart';
import 'package:reimi_app/data/repositories/message_repository_Impl.dart';
import 'package:reimi_app/data/repositories/notification_repository_impl.dart';
import 'package:reimi_app/data/repositories/profile_repository_impl.dart';
import 'package:reimi_app/data/repositories/rainbow_like_repository_impl.dart';
import 'package:reimi_app/data/repositories/storage_repository_impl.dart';
import 'package:reimi_app/data/repositories/user_repository_impl.dart';
import 'package:reimi_app/data/repositories/weather_personality_repository_impl.dart';
import 'package:reimi_app/data/repositories/weather_report_repository_impl.dart';
import 'package:reimi_app/domain/repositories/auth_repository.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';
import 'package:reimi_app/domain/repositories/message_repository.dart';
import 'package:reimi_app/domain/repositories/notification_repository.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';
import 'package:reimi_app/domain/repositories/rainbow_like_repository.dart';
import 'package:reimi_app/domain/repositories/storage_repository.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';
import 'package:reimi_app/domain/repositories/weather_personality_repository.dart';
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
  return ProfileRemoteDataSourceImpl(ref.watch(dioClientProvider));
}

@riverpod
ProfileRepository profileRepository(Ref ref) {
  return ProfileRepositoryImpl(ref.watch(profileRemoteDataSourceProvider));
}

// like関連
@riverpod
LikeRemoteDataSource likeRemoteDataSource(Ref ref) {
  if (useMock) return const LikeMockDataSource();
  return LikeRemoteDataSourceImpl(ref.watch(dioClientProvider));
}

@riverpod
LikeRepository likeRepository(Ref ref) {
  return LikeRepositoryImpl(ref.watch(likeRemoteDataSourceProvider));
}

// rainbow_like関連
@riverpod
RainbowLikeRemoteDataSource rainbowLikeRemoteDataSource(Ref ref) {
  if (useMock) return const RainbowLikeMockDataSource();
  return RainbowLikeRemoteDataSourceImpl(ref.watch(dioClientProvider));
}

@riverpod
RainbowLikeRepository rainbowLikeRepository(Ref ref) {
  return RainbowLikeRepositoryImpl(
      ref.watch(rainbowLikeRemoteDataSourceProvider));
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
  return WeatherReportRemoteDataSourceImpl(ref.watch(dioClientProvider));
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

// weather_personality関連
@riverpod
WeatherPersonalityRemoteDataSource weatherPersonalityRemoteDataSource(Ref ref) {
  if (useMock) return const WeatherPersonalityMockDataSource();
  return WeatherPersonalityRemoteDataSourceImpl(ref.watch(dioClientProvider));
}

@riverpod
WeatherPersonalityRepository weatherPersonalityRepository(Ref ref) {
  return WeatherPersonalityRepositoryImpl(
      ref.watch(weatherPersonalityRemoteDataSourceProvider));
}

// notifiecation関連
@riverpod
NotificationRemoteDataSource notificationRemoteDataSource(Ref ref) {
  return NotificationRemoteDataSourceImpl(ref.watch(dioClientProvider));
}

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepositoryImpl(
      ref.watch(notificationRemoteDataSourceProvider));
}
