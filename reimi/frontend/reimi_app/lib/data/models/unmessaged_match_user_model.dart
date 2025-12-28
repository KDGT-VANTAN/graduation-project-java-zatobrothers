import 'package:freezed_annotation/freezed_annotation.dart';

part 'unmessaged_match_user_model.freezed.dart';
part 'unmessaged_match_user_model.g.dart';

@freezed
abstract class UnmessagedMatchUserModel with _$UnmessagedMatchUserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UnmessagedMatchUserModel({
    required String matchId,
    required String userId,
    required String mainPhotoUrl,
  }) = _UnmessagedMatchUserModel;

  factory UnmessagedMatchUserModel.fromJson(Map<String, dynamic> json) =>
      _$UnmessagedMatchUserModelFromJson(json);
}
