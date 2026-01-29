import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_compatibility_read_model.freezed.dart';

@freezed
abstract class TypeCompatibilityReadModel
    with _$TypeCompatibilityReadModel {
  const factory TypeCompatibilityReadModel({
    required String typeCode,
    required String typeName,
    required String typeCharacterImageUrl,
    required String compatibilityPoint,
  }) = _TypeCompatibilityReadModel;
}
