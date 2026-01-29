import 'package:freezed_annotation/freezed_annotation.dart';

part 'matching_users_dto.freezed.dart';
part 'matching_users_dto.g.dart';

@freezed
abstract class MatchingUsersDto with _$MatchingUsersDto {
  const factory MatchingUsersDto({
    required String otherUserName,
    required String otherUserMainPhotoUrl,
    required String currentUserMainPhotoUrl,
  }) = _MatchingUsersDto;

  factory MatchingUsersDto.fromJson(Map<String, dynamic> json) =>
      _$MatchingUsersDtoFromJson(json);
}
