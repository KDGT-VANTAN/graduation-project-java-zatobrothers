import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/like_user_item.dart';
import 'package:reimi_app/presentation/features/like/enum/like_segment.dart';

part 'like_state.freezed.dart';

@freezed
abstract class LikeState with _$LikeState {
  const factory LikeState({
    @Default(<LikeUserItem>[]) List<LikeUserItem> users,
    @Default(LikeSegment.fromUser) LikeSegment segment,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LikeState;
}
