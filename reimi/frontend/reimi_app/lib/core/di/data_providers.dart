import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/firebase/firebase_auth_provider.dart';
import 'package:reimi_app/data/datasources/auth_remote_datasource.dart';
import 'package:reimi_app/data/datasources/like_remote_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/like_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/profile_mock_datasource.dart';
import 'package:reimi_app/data/datasources/mocks/user_mock_datasource.dart';
import 'package:reimi_app/data/datasources/profile_remote_datasource.dart';
import 'package:reimi_app/data/datasources/user_remote_datasource.dart';
import 'package:reimi_app/data/repositories/auth_repository_impl.dart';
import 'package:reimi_app/data/repositories/like_repository_impl.dart';
import 'package:reimi_app/data/repositories/profile_repository_impl.dart';
import 'package:reimi_app/data/repositories/user_repository_impl.dart';
import 'package:reimi_app/domain/repositories/auth_repository.dart';
import 'package:reimi_app/domain/repositories/like_repository.dart';
import 'package:reimi_app/domain/repositories/profile_repository.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';
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
  if (useMock) return const UserMockDataSourceImpl();
  return const UserRemoteDataSourceImpl();
}

@riverpod
UserRepository userRepository(Ref ref) {
  return UserRepositoryImpl(ref.watch(userRemoteDataSourceProvider));
}

// profile関連
@riverpod
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  if (useMock) return const ProfileMockDataSourceImpl();
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
