import 'package:reimi_app/data/dtos/type_compatibility_dto.dart';
import 'package:reimi_app/domain/read_models/type_compatibility_read_model.dart';

extension TypeCompatibilityDtoMapper on TypeCompatibilityDto {
  TypeCompatibilityReadModel toReadModel() {
    return TypeCompatibilityReadModel(
      typeCode: typeCode,
      typeName: typeName,
      typeImageUrl: typeImageUrl,
      compatibilityPoint: compatibilityPoint,
    );
  }
}

extension TypeCompatibilityDtoListMapper on List<TypeCompatibilityDto> {
  List<TypeCompatibilityReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
