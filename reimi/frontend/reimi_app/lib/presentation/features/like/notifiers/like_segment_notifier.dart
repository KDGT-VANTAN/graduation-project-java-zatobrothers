import 'package:reimi_app/domain/value_objects/like_segment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'like_segment_notifier.g.dart';

@riverpod
class LikeSegmentNotifier extends _$LikeSegmentNotifier {
  @override
  LikeSegment build() {
    return LikeSegment.fromUser;
  }

  void select(LikeSegment segment) {
    state = segment;
  }
}