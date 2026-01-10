import 'package:reimi_app/data/datasources/remote/chat_room_remote_datasource.dart';
import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class ChatRoomMockDataSource implements ChatRoomRemoteDataSource {
  const ChatRoomMockDataSource();

  @override
  Future<List<UnmessagedMatchUserReadModel>> fetchUnmessagedMatchUsers() async {
    return mockUnmessagedMatchUsers;
  }

  @override
  Future<List<ChatRoomSummaryReadModel>> fetchChatRoomSummaries() async {
    return mockChatRoomSummaries;
  }
}

final mockUnmessagedMatchUsers = [
  UnmessagedMatchUserReadModel(
    id: 'user_001',
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
  ),
  UnmessagedMatchUserReadModel(
    id: 'user_002',
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
  ),
  UnmessagedMatchUserReadModel(
    id: 'user_003',
    mainPhotoUrl: Assets.images.sample.user003SampleImage.path,
  ),
  UnmessagedMatchUserReadModel(
    id: 'user_004',
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
  ),
  UnmessagedMatchUserReadModel(
    id: 'user_005',
    mainPhotoUrl: Assets.images.sample.user005SampleImage.path,
  ),
  UnmessagedMatchUserReadModel(
    id: 'user_006',
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
  ),
];

final mockChatRoomSummaries = [
  // ユーザー1
  ChatRoomSummaryReadModel(
    chatRoomId: 'room_001',
    userId: 'chat_user_001',
    name: 'さくら',
    birthDate: DateTime(2000, 4, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.chatUser001SampleImage.path,
    lastMessageText: 'ありがとうございます！週末空...',
    lastSentAt: DateTime(2025, 12, 27, 10, 13),
    unreadCount: 2,
  ),
  // ユーザー2
  ChatRoomSummaryReadModel(
    chatRoomId: 'room_002',
    userId: 'chat_user_002',
    name: 'ゆうき',
    birthDate: DateTime(1997, 8, 20),
    address: Address.kanagawa,
    mainPhotoUrl: Assets.images.sample.chatUser002SampleImage.path,
    lastMessageText: 'こんにちは！マッチングあり...',
    lastSentAt: DateTime(2025, 12, 27, 8, 13),
    unreadCount: 0,
  ),
  // ユーザー3
  ChatRoomSummaryReadModel(
    chatRoomId: 'room_003',
    userId: 'chat_user_003',
    name: 'あおい',
    birthDate: DateTime(2002, 11, 10),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.chatUser003SampleImage.path,
    lastMessageText: '了解です！楽しみにしています',
    lastSentAt: DateTime(2025, 12, 26, 18, 30),
    unreadCount: 1,
  ),
  // ユーザー4
  ChatRoomSummaryReadModel(
    chatRoomId: 'room_004',
    userId: 'chat_user_004',
    name: 'りく',
    birthDate: DateTime(1995, 2, 5),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.chatUser004SampleImage.path,
    lastMessageText: 'よろしくお願いします！',
    lastSentAt: DateTime(2025, 12, 25, 21, 00),
    unreadCount: 0,
  ),
  // ユーザー5
  ChatRoomSummaryReadModel(
    chatRoomId: 'room_005',
    userId: 'chat_user_005',
    name: 'みお',
    birthDate: DateTime(1999, 6, 25),
    address: Address.chiba,
    mainPhotoUrl: Assets.images.sample.chatUser005SampleImage.path,
    lastMessageText: 'カフェ巡り好きなんですね！私...',
    lastSentAt: DateTime(2025, 12, 24, 15, 45),
    unreadCount: 0,
  ),
];
