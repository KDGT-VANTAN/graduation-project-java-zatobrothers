import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'rainbow_like_user_read_model.freezed.dart';

@freezed
abstract class RainbowLikeUserReadModel with _$RainbowLikeUserReadModel {
  const factory RainbowLikeUserReadModel({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String message,
    String? introduction,
    bool? isTodayReported,
    String? typeImageUrl,
  }) = _RainbowLikeUserReadModel;
}
