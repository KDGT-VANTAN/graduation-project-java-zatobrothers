import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'home_user_read_model.freezed.dart';

@freezed
abstract class HomeUserReadModel with _$HomeUserReadModel {
  const factory HomeUserReadModel({
    required String id,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String introduction,
    bool? isTodayReported,
  }) = _HomeUserReadModel;
}
