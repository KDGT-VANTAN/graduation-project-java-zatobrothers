import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'like_user_item.freezed.dart';

@freezed
abstract class LikeUserItem with _$LikeUserItem {
  const factory LikeUserItem({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    String? message,
    String? introduction,
    bool? isTodayReported,
    String? typeImageUrl,
  }) = _LikeUserItem;

  const LikeUserItem._();
  /// レインボーいいねかどうか
  bool get isRainbowLike => message != null && message!.isNotEmpty;
}
