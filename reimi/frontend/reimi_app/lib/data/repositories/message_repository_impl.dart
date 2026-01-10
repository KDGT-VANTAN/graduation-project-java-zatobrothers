import 'package:reimi_app/data/datasources/remote/message_remote_datasource.dart';
import 'package:reimi_app/data/extensions/send_message_dto_extension.dart';
import 'package:reimi_app/domain/params/send_message_params.dart';
import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';
import 'package:reimi_app/domain/repositories/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  const MessageRepositoryImpl(this._remote);
  final MessageRemoteDataSource _remote;

  @override
  Future<void> sendMessage(SendMessageParams params) {
    final dto = params.toDto();
    return _remote.sendMessage(dto);
  }

  @override
  Stream<List<ChatMessageReadModel>> watchMessages(String chatRoomId) {
    return _remote.watchMessages(chatRoomId);
  }
}
