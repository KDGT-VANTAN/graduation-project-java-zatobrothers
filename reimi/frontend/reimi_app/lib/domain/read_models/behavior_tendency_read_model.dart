import 'package:freezed_annotation/freezed_annotation.dart';

part 'behavior_tendency_read_model.freezed.dart';

@freezed
abstract class BehaviorTendencyReadModel with _$BehaviorTendencyReadModel {
  const factory BehaviorTendencyReadModel({
    required String summary,
    required String detail,
  }) = _BehaviorTendencyReadModel;
}
