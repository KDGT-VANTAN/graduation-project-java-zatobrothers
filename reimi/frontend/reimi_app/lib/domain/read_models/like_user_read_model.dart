import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'like_user_read_model.freezed.dart';
part 'like_user_read_model.g.dart';

@freezed
abstract class LikeUserReadModel with _$LikeUserReadModel {
  const factory LikeUserReadModel({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
  }) = _LikeUserReadModel;

  factory LikeUserReadModel.fromJson(Map<String, dynamic> json) =>
      _$LikeUserReadModelFromJson(json);
}
