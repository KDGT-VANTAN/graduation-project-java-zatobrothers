import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
part 'like_user_model.freezed.dart';
part 'like_user_model.g.dart';

@freezed
abstract class LikeUserModel with _$LikeUserModel {
  const factory LikeUserModel({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
  }) = _LikeUserModel;

  factory LikeUserModel.fromJson(Map<String, dynamic> json) =>
      _$LikeUserModelFromJson(json);
}
