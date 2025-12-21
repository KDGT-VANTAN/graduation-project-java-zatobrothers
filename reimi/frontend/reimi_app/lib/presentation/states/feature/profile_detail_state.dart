import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/user_with_profile_model.dart';

part 'profile_detail_state.freezed.dart';

@freezed
abstract class ProfileDetailState with _$ProfileDetailState {
  const factory ProfileDetailState({
    UserWithProfileModel? data,
    @Default(false) bool isLiked,
    @Default(false) bool isRainbowLiked,
    @Default(false) bool isSkipped,
  }) = _ProfileDetailState;
}
