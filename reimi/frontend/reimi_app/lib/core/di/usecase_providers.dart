import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/application/usecases/profile/update_user_profile_usecase.dart';
import 'package:reimi_app/application/usecases/session/get_current_user_state_usecase.dart';
import 'package:reimi_app/application/usecases/user/get_like_users_to_user_usecase.dart';
import 'package:reimi_app/application/usecases/weather_personality/get_weather_personality_result_usecase.dart';
import 'package:reimi_app/application/usecases/weather_personality/test_weather_personality_usecase.dart';
import 'package:reimi_app/core/di/data_providers.dart';
import 'package:reimi_app/application/usecases/chat_room/get_chat_room_summaries_usecase.dart';
import 'package:reimi_app/application/usecases/chat_room/get_unmessaged_match_users_usecase.dart';
import 'package:reimi_app/application/usecases/storage/upload_media_usecase.dart';
import 'package:reimi_app/application/usecases/user/get_current_user_usecase.dart';
import 'package:reimi_app/application/usecases/user/get_home_users_usecase.dart';
import 'package:reimi_app/application/usecases/user/get_like_users_from_user_usecase.dart';
import 'package:reimi_app/application/usecases/profile/get_user_profile_usecase.dart';
import 'package:reimi_app/application/usecases/message/send_message_usecase.dart';
import 'package:reimi_app/application/usecases/auth/sign_in_with_provider_usecase.dart';
import 'package:reimi_app/application/usecases/message/watch_messages_usecase.dart';
import 'package:reimi_app/application/usecases/user/register_user_usecase.dart';
import 'package:reimi_app/application/usecases/weather_report/get_weather_report_usecase.dart';
import 'package:reimi_app/application/usecases/weather_report/get_weather_reports_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecase_providers.g.dart';

// auth関連
@riverpod
SignInWithProviderUseCase signInWithProviderUseCase(Ref ref) {
  return SignInWithProviderUseCase(ref.watch(authRepositoryProvider));
}

// session関連
@riverpod
GetCurrentUserStateUseCase getCurrentUserStateUseCase(Ref ref) {
  return GetCurrentUserStateUseCase(ref.watch(userRepositoryProvider));
}

// user関連
@riverpod
GetHomeUsersUseCase getHomeUsersUseCase(Ref ref) {
  return GetHomeUsersUseCase(ref.watch(userRepositoryProvider));
}

@riverpod
GetLikeUsersFromUserUseCase getLikeUsersFromUserUseCase(Ref ref) {
  return GetLikeUsersFromUserUseCase(ref.watch(likeRepositoryProvider));
}

@riverpod
GetLikeUsersToUserUseCase getLikeUsersToUserUseCase(Ref ref) {
  return GetLikeUsersToUserUseCase(ref.watch(likeRepositoryProvider));
}

@riverpod
GetCurrentUserUseCase getCurrentUserUseCase(Ref ref) {
  return GetCurrentUserUseCase(ref.watch(userRepositoryProvider));
}

@riverpod
RegisterUserUseCase registerUserUseCase(Ref ref) {
  return RegisterUserUseCase(ref.watch(userRepositoryProvider));
}

// profile関連
@riverpod
GetUserProfileUseCase getUserProfileUseCase(Ref ref) {
  return GetUserProfileUseCase(ref.watch(profileRepositoryProvider));
}

@riverpod
UpdateUserProfileUseCase updateUserProfileUseCase(Ref ref) {
  return UpdateUserProfileUseCase(ref.watch(profileRepositoryProvider));
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
  return GetWeatherReportsUseCase(ref.watch(weatherReportRepositoryProvider));
}

@riverpod
GetWeatherReportUseCase getWeatherReportUseCase(Ref ref) {
  return GetWeatherReportUseCase(ref.watch(weatherReportRepositoryProvider));
}

// storage関連
@riverpod
UploadMediaUseCase uploadMediaUseCase(Ref ref) {
  return UploadMediaUseCase(ref.watch(storageRepositoryProvider));
}

// weather_personality関連
@riverpod
TestWeatherPersonalityUseCase testWeatherPersonalityUseCase(Ref ref) {
  return TestWeatherPersonalityUseCase(
      ref.watch(weatherPersonalityRepositoryProvider));
}

@riverpod
GetWeatherPersonalityResultUseCase getWeatherPersonalityResultUseCase(Ref ref) {
  return GetWeatherPersonalityResultUseCase(
      ref.watch(weatherPersonalityRepositoryProvider));
}
