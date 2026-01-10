import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

part 'send_message_dto.freezed.dart';
part 'send_message_dto.g.dart';

@freezed
abstract class SendMessageDto with _$SendMessageDto {
  const factory SendMessageDto({
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required String content,
    @IsoDateTimeConverter() required DateTime sentAt,
  }) = _SendMessageDto;

  factory SendMessageDto.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDtoFromJson(json);
}
