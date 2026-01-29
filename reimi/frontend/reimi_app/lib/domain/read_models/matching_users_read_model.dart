import 'package:freezed_annotation/freezed_annotation.dart';

part 'matching_users_read_model.freezed.dart';

@freezed
abstract class MatchingUsersReadModel with _$MatchingUsersReadModel {
  const factory MatchingUsersReadModel({
    required String otherUserName,
    required String otherUserMainPhotoUrl,
    required String currentUserMainPhotoUrl,
  }) = _MatchingUsersReadModel;
}
