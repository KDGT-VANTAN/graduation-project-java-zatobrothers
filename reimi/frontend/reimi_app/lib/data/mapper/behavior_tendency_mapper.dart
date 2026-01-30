import 'package:reimi_app/data/dtos/behavior_tendency_dto.dart';
import 'package:reimi_app/domain/read_models/behavior_tendency_read_model.dart';

extension BehaviorTendencyDtoMapper on BehaviorTendencyDto {
  BehaviorTendencyReadModel toReadModel() {
    return BehaviorTendencyReadModel(
      summary: summary,
      detail: detail,
    );
  }
}

extension BehaviorTendencyDtoListMapper on List<BehaviorTendencyDto> {
  List<BehaviorTendencyReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
