import 'package:freezed_annotation/freezed_annotation.dart';

part 'matching_users_read_model.freezed.dart';
part 'matching_users_read_model.g.dart';

@freezed
abstract class MatchingUsersReadModel with _$MatchingUsersReadModel {
  const factory MatchingUsersReadModel({
    required String otherUserName,
    required String otherUserMainPhotoUrl,
    required String currentUserMainPhotoUrl,
  }) = _MatchingUsersReadModel;

  factory MatchingUsersReadModel.fromJson(Map<String, dynamic> json) =>
      _$MatchingUsersReadModelFromJson(json);
}
