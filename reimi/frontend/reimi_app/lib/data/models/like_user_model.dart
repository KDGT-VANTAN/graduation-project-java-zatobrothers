import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
part 'like_user_model.freezed.dart';
part 'like_user_model.g.dart';

@freezed
abstract class LikeUserModel with _$LikeUserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LikeUserModel({
    required String userId,
    @IsoDateTimeConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
  }) = _LikeUserModel;

  factory LikeUserModel.fromJson(Map<String, dynamic> json) =>
      _$LikeUserModelFromJson(json);
}
