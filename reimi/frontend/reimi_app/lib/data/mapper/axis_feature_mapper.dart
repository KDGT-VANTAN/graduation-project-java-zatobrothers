import 'package:reimi_app/data/dtos/axis_feature_dto.dart';
import 'package:reimi_app/domain/read_models/axis_feature_read_model.dart';

extension AxisFeatureDtoMapper on AxisFeatureDto {
  AxisFeatureReadModel toReadModel() {
    return AxisFeatureReadModel(
      axis: axis,
      polarity: polarity,
      description: description,
    );
  }
}

extension AxisFeatureDtoListMapper on List<AxisFeatureDto> {
  List<AxisFeatureReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
