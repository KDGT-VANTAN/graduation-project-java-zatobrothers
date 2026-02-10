import 'package:reimi_app/domain/read_models/like_user_item.dart';
import 'package:reimi_app/domain/read_models/rainbow_like_user_read_model.dart';

extension RainbowLikeUserReadModelMapper on RainbowLikeUserReadModel {
  LikeUserItem toLikeUserItem() {
    return LikeUserItem(
      id: id,
      name: name,
      birthDate: birthDate,
      address: address,
      mainPhotoUrl: mainPhotoUrl,
      message: message,
      introduction: introduction,
      isTodayReported: isTodayReported,
      typeImageUrl: typeImageUrl,
    );
  }
}