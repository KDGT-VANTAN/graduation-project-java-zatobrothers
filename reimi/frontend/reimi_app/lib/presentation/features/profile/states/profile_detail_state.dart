import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';

part 'profile_detail_state.freezed.dart';

@freezed
abstract class ProfileDetailState with _$ProfileDetailState {
  const factory ProfileDetailState({
    UserWithProfileReadModel? profile,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(false) bool isLiked,
    @Default(false) bool isRainbowLiked,
    @Default(false) bool isSkipped,
  }) = _ProfileDetailState;
}
