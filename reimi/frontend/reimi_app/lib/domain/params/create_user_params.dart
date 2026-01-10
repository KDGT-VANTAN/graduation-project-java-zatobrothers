import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';

part 'create_user_params.freezed.dart';

@freezed
abstract class CreateUserParams with _$CreateUserParams {
  const factory CreateUserParams({
    required String name,
    required String email,
    required Gender gender,
    required DateTime birthDate,
    required Address address,
    required String introduction,
    required String mainPhoto,
  }) = _CreateUserParams;
}
