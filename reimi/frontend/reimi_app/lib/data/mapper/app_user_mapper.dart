import 'package:reimi_app/data/dtos/app_user_dto.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';

extension AppUserDtoMapper on AppUserDto {
  AppUserReadModel toReadModel() {
    return AppUserReadModel(
      id: id,
      name: name,
      email: email,
      gender: gender,
      birthDate: birthDate,
      address: address,
      status: status,
    );
  }
}
