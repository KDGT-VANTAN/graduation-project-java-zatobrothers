import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';

part 'home_user_model.freezed.dart';
part 'home_user_model.g.dart';

@freezed
abstract class HomeUserModel with _$HomeUserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeUserModel({
    required String userId,
    required String firebaseUid,
    required String name,
    @IsoDateTimeConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
    required UserStatus status,
    required String introduction,
  }) = _HomeUserModel;

  factory HomeUserModel.fromJson(Map<String, dynamic> json) =>
      _$HomeUserModelFromJson(json);
}
