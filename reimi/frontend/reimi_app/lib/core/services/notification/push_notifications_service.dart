import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsService {
  const PushNotificationsService(this._messaging);

  final FirebaseMessaging _messaging;

  Future<NotificationSettings> requestPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    // フォアグラウンドでも通知を表示する設定
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    return settings;
  }

  Future<String?> getToken() {
    return _messaging.getToken();
  }

  Stream<String> get onTokenRefresh => _messaging.onTokenRefresh;

  Stream<RemoteMessage> get onMessage => FirebaseMessaging.onMessage;

  Stream<RemoteMessage> get onMessageOpenedApp =>
      FirebaseMessaging.onMessageOpenedApp;
}
