import 'package:reimi_app/domain/params/setting_go_out_conditions_params.dart';
import 'package:reimi_app/domain/read_models/go_out_suggestion_read_model.dart';

abstract class GoOutRepository {
  Future<GoOutSuggestionReadModel> fetchGoOutSuggestion();
  Future<void> settingGoOutConditions(SettingGoOutConditionsParams params);
}
