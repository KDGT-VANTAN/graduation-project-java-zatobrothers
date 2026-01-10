import 'package:reimi_app/domain/params/send_message_params.dart';
import 'package:reimi_app/domain/repositories/message_repository.dart';

class SendMessageUseCase {
  const SendMessageUseCase(this._repository);
  final MessageRepository _repository;

  Future<void> call(SendMessageParams params) {
    return _repository.sendMessage(params);
  }
}
