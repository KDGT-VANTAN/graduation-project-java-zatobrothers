import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:reimi_app/data/dtos/update_profile_dto.dart';
import 'package:reimi_app/domain/params/update_profile_params.dart';

extension UpdateProfileDtoMapper on UpdateProfileParams {
  UpdateProfileDto toDto() {
    return UpdateProfileDto(
      name: name,
      gender: gender,
      address: address,
      mainPhoto: mainPhoto,
      introduction: introduction,
      height: height,
      bodyShape: bodyShape,
      annualIncome: annualIncome,
      bloodType: bloodType,
      hometown: hometown,
      communicationStyle: communicationStyle,
      occupation: occupation,
      education: education,
      smoking: smoking,
      alcohol: alcohol,
      holiday: holiday,
      sunnyDayHobbies: sunnyDayHobbies,
      rainyDayHobbies: rainyDayHobbies,
      subPhotos: subPhotos,
    );
  }
}

extension UpdateProfileFormData on UpdateProfileDto {
  Future<FormData> toFormData() async {
    final map = <String, dynamic>{};

    map.addAll(toJson()..removeWhere((k, v) => v == null));

    // mainPhoto（必須）
    final mainPhotoMultipart = await _toMultipart(mainPhoto);
    if (mainPhotoMultipart != null) {
      map['mainPhoto'] = mainPhotoMultipart;
    } else {
      map.remove('mainPhoto');
    }

    // subPhotos（存在する場合のみ）
    if (subPhotos != null &&
        subPhotos!.isNotEmpty &&
        subPhotos!.every((e) => e.isNotEmpty)) {
      map['subPhotos'] = await Future.wait(
        subPhotos!.map(_toMultipart),
      );
    } else {
      map.remove('subPhotos');
    }

    return FormData.fromMap(map);
  }

  /// 変更されていなければ URL → bytes → MultipartFile
  /// 変更されていれば ローカルファイル → MultipartFile
  Future<MultipartFile?> _toMultipart(String value) async {
    if (value.startsWith('https://storage.googleapis.com/')) {
      return null;
    }

    // 新しく選択された画像
    return MultipartFile.fromFile(
      value,
      filename: p.basename(value),
    );
  }
}
