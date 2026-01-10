import 'package:reimi_app/data/datasources/remote/message_remote_datasource.dart';
import 'package:reimi_app/data/dtos/send_message_dto.dart';
import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

class MessageMockDataSource implements MessageRemoteDataSource {
  const MessageMockDataSource();

  @override
  Future<void> sendMessage(SendMessageDto dto) async {}

  @override
  Stream<List<ChatMessageReadModel>> watchMessages(String chatRoomId) {
    return Stream.value(mockChatMessages);
  }
}

final mockChatMessages = [
  // メッセージ1 (受信)
  ChatMessageReadModel(
    messageId: 'msg_001',
    chatRoomId: 'room_001',
    senderId: 'chat_user_001',
    content: 'こんにちは！マッチングありがとう\nございます😊',
    messageType: MessageType.text,
    sentAt: DateTime(2025, 12, 27, 9, 14),
  ),
  // メッセージ2 (送信)
  ChatMessageReadModel(
    messageId: 'msg_002',
    chatRoomId: 'room_001',
    senderId: 'user_000',
    content: 'こちらこそありがとうございます！\nよろしくお願いします',
    messageType: MessageType.text,
    sentAt: DateTime(2025, 12, 27, 9, 19),
  ),
  // メッセージ3 (受信)
  ChatMessageReadModel(
    messageId: 'msg_003',
    chatRoomId: 'room_001',
    senderId: 'chat_user_001',
    content: 'プロフィール見ました！カフェ\n巡りお好きなんですね',
    messageType: MessageType.text,
    sentAt: DateTime(2025, 12, 27, 9, 24),
  ),
  // メッセージ4 (送信)
  ChatMessageReadModel(
    messageId: 'msg_004',
    chatRoomId: 'room_001',
    senderId: 'user_000',
    content: 'はい！最近は週末によく行ってます☕️',
    messageType: MessageType.text,
    sentAt: DateTime(2025, 12, 27, 9, 29),
  ),
  // メッセージ5 (受信)
  ChatMessageReadModel(
    messageId: 'msg_005',
    chatRoomId: 'room_001',
    senderId: 'chat_user_001',
    content: 'ありがとうございます！週末空\nいてますか？',
    messageType: MessageType.text,
    sentAt: DateTime(2025, 12, 27, 10, 04),
  ),
];
