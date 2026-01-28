import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/data/dtos/create_user_dto.dart';
import 'package:reimi_app/domain/params/create_user_params.dart';

extension CreateUserDtoMapper on CreateUserParams {
  CreateUserDto toDto() {
    return CreateUserDto(
      gender: gender,
      birthDate: birthDate,
      address: address,
      name: name,
      introduction: introduction,
      mainPhoto: mainPhoto,
      email: email,
    );
  }
}

extension CreateUserFormData on CreateUserDto {
  Future<FormData> toFormData() async {
    final json = toJson();
    return FormData.fromMap({
      ...json,
      'birthDate': const YyyyMmDdDateConverter().toJson(birthDate),
      'mainPhoto': await MultipartFile.fromFile(
        mainPhoto,
        filename: p.basename(mainPhoto),
      ),
    });
  }
}
