import 'package:freezed_annotation/freezed_annotation.dart';

part 'go_out_plan_read_model.freezed.dart';

@freezed
abstract class GoOutPlanReadModel with _$GoOutPlanReadModel {
  const factory GoOutPlanReadModel({
    required String title,
    required String description,
  }) = _BehaviorTendencyReadModel;
}
