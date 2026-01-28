import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/firebase/firebase_messaging_provider.dart';
import 'package:reimi_app/core/services/notification/push_notifications_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'push_notifications_provider.g.dart';

@riverpod
PushNotificationsService pushNotificationsService(Ref ref) {
  return PushNotificationsService(ref.watch(firebaseMessagingProvider));
}
