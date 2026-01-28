import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/services/notification/push_notifications_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_initializer_notifier.g.dart';

@riverpod
class AppInitializerNotifier extends _$AppInitializerNotifier {
  @override
  Future<void> build() async {
    await initNotification();
  }

  Future<void> initNotification() async {
    try {
      final messaging = ref.read(pushNotificationsServiceProvider);

      // 権限リクエスト
      final settings = await messaging.requestPermission();
      if (settings.authorizationStatus != AuthorizationStatus.authorized) {
        return;
      }

      // 初回トークン取得
      final token = await messaging.getToken();
      if (token != null) {
        await ref.read(registerDeviceTokenUseCaseProvider).call(token);
      }

      // トークン更新監視
      messaging.onTokenRefresh.listen((newToken) async {
        await ref.read(registerDeviceTokenUseCaseProvider).call(newToken);
      });
    } catch (_) {}
  }
}
