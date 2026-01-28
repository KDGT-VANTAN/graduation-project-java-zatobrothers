import 'package:reimi_app/data/datasources/remote/notification_remote_datasource.dart';
import 'package:reimi_app/domain/repositories/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  const NotificationRepositoryImpl(this._remote);

  final NotificationRemoteDataSource _remote;

  @override
  Future<void> registerDeviceToken(String token) {
    return _remote.registerDeviceToken(token);
  }
}
