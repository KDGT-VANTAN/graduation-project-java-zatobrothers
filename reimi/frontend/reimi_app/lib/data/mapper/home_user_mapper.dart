import 'package:reimi_app/data/dtos/home_user_dto.dart';
import 'package:reimi_app/domain/read_models/home_user_read_model.dart';

extension HomeUserDtoMapper on HomeUserDto {
  HomeUserReadModel toReadModel() {
    return HomeUserReadModel(
      id: id,
      name: name,
      birthDate: birthDate,
      address: address,
      mainPhotoUrl: mainPhotoUrl,
      introduction: introduction,
      isTodayReported: isTodayReported,
      typeCharacterImageUrl: typeCharacterImageUrl,
    );
  }
}

extension HomeUserDtoListMapper on List<HomeUserDto> {
  List<HomeUserReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
