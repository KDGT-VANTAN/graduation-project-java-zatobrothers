import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/firebase/firebase_auth_provider.dart';
import 'package:reimi_app/data/datasources/auth_remote_datasource.dart';
import 'package:reimi_app/data/repositories/auth_repository_impl.dart';
import 'package:reimi_app/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_providers.g.dart';

@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl(ref.watch(firebaseAuthProvider));
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));
}
