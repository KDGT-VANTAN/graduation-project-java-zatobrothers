import 'package:freezed_annotation/freezed_annotation.dart';

part 'unmessaged_match_user_model.freezed.dart';
part 'unmessaged_match_user_model.g.dart';

@freezed
abstract class UnmessagedMatchUserModel with _$UnmessagedMatchUserModel {
  const factory UnmessagedMatchUserModel({
    required String id,
    required String mainPhotoUrl,
  }) = _UnmessagedMatchUserModel;

  factory UnmessagedMatchUserModel.fromJson(Map<String, dynamic> json) =>
      _$UnmessagedMatchUserModelFromJson(json);
}
