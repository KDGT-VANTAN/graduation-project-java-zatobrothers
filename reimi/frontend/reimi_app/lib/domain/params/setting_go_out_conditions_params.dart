import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_go_out_conditions_params.freezed.dart';

@freezed
abstract class SettingGoOutConditionsParams
    with _$SettingGoOutConditionsParams {
  const factory SettingGoOutConditionsParams({
    required DateTime goOutDate,
    required String goOutPlace,
  }) = _SettingGoOutConditionsParams;
}
