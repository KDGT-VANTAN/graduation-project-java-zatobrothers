import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/read_models/go_out_plan_read_model.dart';

part 'go_out_suggestion_read_model.freezed.dart';

@freezed
abstract class GoOutSuggestionReadModel with _$GoOutSuggestionReadModel {
  const factory GoOutSuggestionReadModel({
    @YyyyMmDdDateConverter() required DateTime date,
    required String place,
    required GoOutPlanReadModel goOutPlan,
    required String weatherTrendency,
  }) = _GoOutSuggestionReadModel;
}
