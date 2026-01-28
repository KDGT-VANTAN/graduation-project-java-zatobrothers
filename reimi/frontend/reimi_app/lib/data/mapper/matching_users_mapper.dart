import 'package:reimi_app/data/dtos/matching_users_dto.dart';
import 'package:reimi_app/domain/read_models/matching_users_read_model.dart';

extension MatchingUsersDtoMapper on MatchingUsersDto {
  MatchingUsersReadModel toReadModel() {
    return MatchingUsersReadModel(
      otherUserName: otherUserName,
      otherUserMainPhotoUrl: otherUserMainPhotoUrl,
      currentUserMainPhotoUrl: currentUserMainPhotoUrl,
    );
  }
}
