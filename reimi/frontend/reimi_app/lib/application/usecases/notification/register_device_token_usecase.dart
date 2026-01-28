import 'package:reimi_app/domain/repositories/notification_repository.dart';

class RegisterDeviceTokenUseCase {
  const RegisterDeviceTokenUseCase(this._repository);

  final NotificationRepository _repository;

  Future<void> call(String token) {
    return _repository.registerDeviceToken(token);
  }
}