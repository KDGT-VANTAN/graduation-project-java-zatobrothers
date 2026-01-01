import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/di/data_providers.dart';
import 'package:reimi_app/domain/usecases/chat_room/get_chat_room_summaries_usecase.dart';
import 'package:reimi_app/domain/usecases/chat_room/get_unmessaged_match_users_usecase.dart';
import 'package:reimi_app/domain/usecases/user/get_current_user_usecase.dart';
import 'package:reimi_app/domain/usecases/home/get_home_users_usecase.dart';
import 'package:reimi_app/domain/usecases/like/get_like_users_from_user_usecase.dart';
import 'package:reimi_app/domain/usecases/like/get_like_users_to_user_usecase.dart';
import 'package:reimi_app/domain/usecases/profile/get_user_profile_usecase.dart';
import 'package:reimi_app/domain/usecases/message/send_message_usecase.dart';
import 'package:reimi_app/domain/usecases/auth/sign_in_with_provider_usecase.dart';
import 'package:reimi_app/domain/usecases/message/watch_messages_usecase.dart';
import 'package:reimi_app/domain/usecases/weather_report/get_weather_report_usecase.dart';
import 'package:reimi_app/domain/usecases/weather_report/get_weather_reports_usecase.dart';
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
  return GetUserProfileUseCase(ref.watch(profileRepositoryProvider));
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

// chat_room関連
@riverpod
GetUnmessagedMatchUsersUseCase getUnmessagedMatchUsersUseCase(Ref ref) {
  return GetUnmessagedMatchUsersUseCase(ref.watch(chatRoomRepositoryProvider));
}

@riverpod
GetChatRoomSummariesUsecase getChatRoomSummariesUseCase(Ref ref) {
  return GetChatRoomSummariesUsecase(ref.watch(chatRoomRepositoryProvider));
}

// message関連
@riverpod
SendMessageUseCase sendMessageUseCase(Ref ref) {
  return SendMessageUseCase(ref.watch(messageRepositoryProvider));
}

@riverpod
WatchMessagesUseCase watchMessagesUseCase(Ref ref) {
  return WatchMessagesUseCase(ref.watch(messageRepositoryProvider));
}

// weather_report関連
@riverpod
GetWeatherReportsUseCase getWeatherReportsUseCase(Ref ref) {
  return GetWeatherReportsUseCase(
      ref.watch(weatherReportRepositoryProvider));
}

@riverpod
GetWeatherReportUseCase getWeatherReportUseCase(Ref ref) {
  return GetWeatherReportUseCase(
      ref.watch(weatherReportRepositoryProvider));
}
