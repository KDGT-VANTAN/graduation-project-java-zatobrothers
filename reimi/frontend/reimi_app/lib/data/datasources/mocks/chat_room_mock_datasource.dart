import 'package:reimi_app/data/datasources/chat_room_remote_datasource.dart';
import 'package:reimi_app/data/models/chat_room_summary_model.dart';
import 'package:reimi_app/data/models/unmessaged_match_user_model.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class ChatRoomMockDataSource implements ChatRoomRemoteDataSource {
  const ChatRoomMockDataSource();

  @override
  Future<List<UnmessagedMatchUserModel>?> fetchUnmessagedMatchUsers(
    String userId,
  ) async {
    return mockUnmessagedMatchUsers;
  }

  @override
  Future<List<ChatRoomSummaryModel>?> fetchChatRoomSummaries(
    String userId,
  ) async {
    return mockChatRoomSummaries;
  }
}

final mockUnmessagedMatchUsers = [
  UnmessagedMatchUserModel(
    matchId: 'match_001',
    userId: 'user_001',
    mainPhotoUrl: Assets.images.sample.user001SampleImage.path,
  ),
  UnmessagedMatchUserModel(
    matchId: 'match_002',
    userId: 'user_002',
    mainPhotoUrl: Assets.images.sample.user002SampleImage.path,
  ),
  UnmessagedMatchUserModel(
    matchId: 'match_003',
    userId: 'user_003',
    mainPhotoUrl: Assets.images.sample.user003SampleImage.path,
  ),
  UnmessagedMatchUserModel(
    matchId: 'match_004',
    userId: 'user_004',
    mainPhotoUrl: Assets.images.sample.user004SampleImage.path,
  ),
  UnmessagedMatchUserModel(
    matchId: 'match_005',
    userId: 'user_005',
    mainPhotoUrl: Assets.images.sample.user005SampleImage.path,
  ),
  UnmessagedMatchUserModel(
    matchId: 'match_006',
    userId: 'user_006',
    mainPhotoUrl: Assets.images.sample.user006SampleImage.path,
  ),
];

final mockChatRoomSummaries = [
  // ユーザー1
  ChatRoomSummaryModel(
    chatRoomId: 'room_001',
    matchId: 'match_001',
    userId: 'chat_user_001',
    name: 'さくら',
    birthDate: DateTime(2000, 4, 15),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.chatUser001SampleImage.path,
    lastMessageId: 'msg_001',
    lastMessageText: 'ありがとうございます！週末空...',
    lastMessageSenderId: 'chat_user_001',
    lastMessageAt: DateTime(2025, 12, 27, 10, 13),
    unreadCount: 2,
  ),
  // ユーザー2
  ChatRoomSummaryModel(
    chatRoomId: 'room_002',
    matchId: 'match_002',
    userId: 'chat_user_002',
    name: 'ゆうき',
    birthDate: DateTime(1997, 8, 20),
    address: Address.kanagawa,
    mainPhotoUrl: Assets.images.sample.chatUser002SampleImage.path,
    lastMessageId: 'msg_002',
    lastMessageText: 'こんにちは！マッチングあり...',
    lastMessageSenderId: 'chat_user_002',
    lastMessageAt: DateTime(2025, 12, 27, 8, 13),
    unreadCount: 0,
  ),
  // ユーザー3
  ChatRoomSummaryModel(
    chatRoomId: 'room_003',
    matchId: 'match_003',
    userId: 'chat_user_003',
    name: 'あおい',
    birthDate: DateTime(2002, 11, 10),
    address: Address.osaka,
    mainPhotoUrl: Assets.images.sample.chatUser003SampleImage.path,
    lastMessageId: 'msg_003',
    lastMessageText: '了解です！楽しみにしています',
    lastMessageSenderId: 'chat_user_003',
    lastMessageAt: DateTime(2025, 12, 26, 18, 30),
    unreadCount: 1,
  ),
  // ユーザー4
  ChatRoomSummaryModel(
    chatRoomId: 'room_004',
    matchId: 'match_004',
    userId: 'chat_user_004',
    name: 'りく',
    birthDate: DateTime(1995, 2, 5),
    address: Address.tokyo,
    mainPhotoUrl: Assets.images.sample.chatUser004SampleImage.path,
    lastMessageId: 'msg_004',
    lastMessageText: 'よろしくお願いします！',
    lastMessageSenderId: 'chat_user_004',
    lastMessageAt: DateTime(2025, 12, 25, 21, 00),
    unreadCount: 0,
  ),
  // ユーザー5
  ChatRoomSummaryModel(
    chatRoomId: 'room_005',
    matchId: 'match_005',
    userId: 'chat_user_005',
    name: 'みお',
    birthDate: DateTime(1999, 6, 25),
    address: Address.chiba,
    mainPhotoUrl: Assets.images.sample.chatUser005SampleImage.path,
    lastMessageId: 'msg_005',
    lastMessageText: 'カフェ巡り好きなんですね！私...',
    lastMessageSenderId: 'chat_user_005',
    lastMessageAt: DateTime(2025, 12, 24, 15, 45),
    unreadCount: 0,
  ),
];
