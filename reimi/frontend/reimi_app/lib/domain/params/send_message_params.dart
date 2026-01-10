import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

part 'send_message_params.freezed.dart';

@freezed
abstract class SendMessageParams with _$SendMessageParams {
  const factory SendMessageParams({
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required String content,
    @IsoDateTimeConverter() required DateTime sentAt,
  }) = _SendMessageParams;
}
