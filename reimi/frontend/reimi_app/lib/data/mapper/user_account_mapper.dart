import 'package:reimi_app/data/dtos/user_account_dto.dart';
import 'package:reimi_app/domain/read_models/user_account_read_model.dart';

extension UserAccountDtoMapper on UserAccountDto {
  UserAccountReadModel toReadModel() {
    return UserAccountReadModel(
      id: id,
      name: name,
      mainPhotoUrl: mainPhotoUrl,
      typeCode: typeCode,
      typeName: typeName,
      typeImageUrl: typeImageUrl,
      items: items,
    );
  }
}
