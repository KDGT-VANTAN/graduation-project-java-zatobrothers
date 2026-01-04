import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'home_user_model.freezed.dart';
part 'home_user_model.g.dart';

@freezed
abstract class HomeUserModel with _$HomeUserModel {
  const factory HomeUserModel({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String introduction,
    required bool isTodayReported,
  }) = _HomeUserModel;

  factory HomeUserModel.fromJson(Map<String, dynamic> json) =>
      _$HomeUserModelFromJson(json);
}
