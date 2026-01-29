import 'package:reimi_app/data/dtos/like_user_dto.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';

extension LikeUserDtoMapper on LikeUserDto {
  LikeUserReadModel toReadModel() {
    return LikeUserReadModel(
      id: id,
      name: name,
      birthDate: birthDate,
      address: address,
      mainPhotoUrl: mainPhotoUrl,
      introduction: introduction,
      isTodayReported: isTodayReported,
    );
  }
}

extension LikeUserDtoListMapper on List<LikeUserDto> {
  List<LikeUserReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
