import 'package:freezed_annotation/freezed_annotation.dart';

part 'unmessaged_match_user_dto.freezed.dart';
part 'unmessaged_match_user_dto.g.dart';

@freezed
abstract class UnmessagedMatchUserDto with _$UnmessagedMatchUserDto {
  const factory UnmessagedMatchUserDto({
    required String id,
    required String mainPhotoUrl,
  }) = _UnmessagedMatchUserDto;

  factory UnmessagedMatchUserDto.fromJson(Map<String, dynamic> json) =>
      _$UnmessagedMatchUserDtoFromJson(json);
}
