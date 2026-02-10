import 'package:reimi_app/data/dtos/rainbow_like_user_dto.dart';
import 'package:reimi_app/domain/read_models/rainbow_like_user_read_model.dart';

extension RainbowLikeUserDtoMapper on RainbowLikeUserDto {
  RainbowLikeUserReadModel toReadModel() {
    return RainbowLikeUserReadModel(
      id: id,
      name: name,
      birthDate: birthDate,
      address: address,
      mainPhotoUrl: mainPhotoUrl,
      introduction: introduction,
      message: message,
      isTodayReported: isTodayReported,
      typeImageUrl: typeImageUrl,
    );
  }
}

extension RainbowLikeUserDtoListMapper on List<RainbowLikeUserDto> {
  List<RainbowLikeUserReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
