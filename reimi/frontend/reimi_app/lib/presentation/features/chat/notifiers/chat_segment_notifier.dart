import 'package:reimi_app/domain/value_objects/chat_segment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_segment_notifier.g.dart';

@riverpod
class ChatSegmentNotifier extends _$ChatSegmentNotifier {
  @override
  ChatSegment build() {
    return ChatSegment.message;
  }

  void select(ChatSegment segment) {
    state = segment;
  }
}