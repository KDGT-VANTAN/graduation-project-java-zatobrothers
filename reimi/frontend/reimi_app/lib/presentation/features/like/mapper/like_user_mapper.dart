import 'package:reimi_app/domain/read_models/like_user_item.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';

extension LikeUserReadModelMapper on LikeUserReadModel {
  LikeUserItem toLikeUserItem() {
    return LikeUserItem(
      id: id,
      name: name,
      birthDate: birthDate,
      address: address,
      mainPhotoUrl: mainPhotoUrl,
      introduction: introduction,
      isTodayReported: isTodayReported,
      typeImageUrl: typeImageUrl,
    );
  }
}