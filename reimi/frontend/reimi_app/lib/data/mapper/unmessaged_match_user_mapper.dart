import 'package:reimi_app/data/dtos/unmessaged_match_user_dto.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';

extension UnmessagedMatchUserDtoMapper on UnmessagedMatchUserDto {
  UnmessagedMatchUserReadModel toReadModel() {
    return UnmessagedMatchUserReadModel(
      id: id,
      mainPhotoUrl: mainPhotoUrl,
    );
  }
}

extension UnmessagedMatchUserDtoListMapper on List<UnmessagedMatchUserDto> {
  List<UnmessagedMatchUserReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
