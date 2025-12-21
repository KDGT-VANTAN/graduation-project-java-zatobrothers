import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/user_with_profile_model.dart';

part 'profile_edit_state.freezed.dart';

@freezed
abstract class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState({
    UserWithProfileModel? data,
    @Default(false) bool isChanged
  }) = _ProfileEditState;
}
