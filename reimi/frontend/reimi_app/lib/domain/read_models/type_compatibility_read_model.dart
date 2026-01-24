import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_compatibility_read_model.freezed.dart';
part 'type_compatibility_read_model.g.dart';

@freezed
abstract class TypeCompatibilityReadModel
    with _$TypeCompatibilityReadModel {
  const factory TypeCompatibilityReadModel({
    required String typeCode,
    required String typeName,
    required String typeCharacterImageUrl,
    required String compatibilityPoint,
  }) = _TypeCompatibilityReadModel;

  factory TypeCompatibilityReadModel.fromJson(
          Map<String, dynamic> json) =>
      _$TypeCompatibilityReadModelFromJson(json);
}
