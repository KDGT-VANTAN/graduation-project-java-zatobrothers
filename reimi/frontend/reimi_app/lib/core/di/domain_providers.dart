import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/di/data_providers.dart';
import 'package:reimi_app/domain/usecases/get_current_user_usecase.dart';
import 'package:reimi_app/domain/usecases/get_home_users_usecase.dart';
import 'package:reimi_app/domain/usecases/get_like_users_from_user_usecase.dart';
import 'package:reimi_app/domain/usecases/get_like_users_to_user_usecase.dart';
import 'package:reimi_app/domain/usecases/get_user_profile_usecase.dart';
import 'package:reimi_app/domain/usecases/sign_in_with_provider_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'domain_providers.g.dart';

// auth関連
@riverpod
SignInWithProviderUseCase signInWithProviderUseCase(Ref ref) {
  return SignInWithProviderUseCase(ref.watch(authRepositoryProvider));
}

// user関連
@riverpod
GetHomeUsersUseCase getHomeUsersUseCase(Ref ref) {
  return GetHomeUsersUseCase(
    profileRepository: ref.watch(profileRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
  );
}

@riverpod
GetCurrentUserUseCase getCurrentUserUseCase(Ref ref) {
  return GetCurrentUserUseCase(
    authRepository: ref.watch(authRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
  );
}

// profile関連
@riverpod
GetUserProfileUseCase getUserProfileUseCase(Ref ref) {
  return GetUserProfileUseCase(
    userRepository: ref.watch(userRepositoryProvider),
    profileRepository: ref.watch(profileRepositoryProvider),
  );
}

// like関連
@riverpod
GetLikeUsersFromUserUseCase getLikeUsersFromUserUseCase(Ref ref) {
  return GetLikeUsersFromUserUseCase(ref.watch(likeRepositoryProvider));
}

@riverpod
GetLikeUsersToUserUseCase getLikeUsersToUserUseCase(Ref ref) {
  return GetLikeUsersToUserUseCase(ref.watch(likeRepositoryProvider));
}
