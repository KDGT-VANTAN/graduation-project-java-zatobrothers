import 'package:reimi_app/domain/params/setting_go_out_conditions_params.dart';
import 'package:reimi_app/domain/repositories/go_out_repository.dart';

class SettingGoOutConditionsUseCase {
  const SettingGoOutConditionsUseCase(this._repository);
  final GoOutRepository _repository;

  Future<void> call(SettingGoOutConditionsParams params) {
    return _repository.settingGoOutConditions(params);
  }
}
