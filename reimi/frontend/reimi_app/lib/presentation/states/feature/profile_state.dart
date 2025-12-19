import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/profile_model.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    ProfileModel? data,
    @Default(false) bool isChanged
  }) = _ProfileState;
}
