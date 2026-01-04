import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@freezed
abstract class AppUserModel with _$AppUserModel {
  const factory AppUserModel({
    required String id,
    required String name,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);
}
