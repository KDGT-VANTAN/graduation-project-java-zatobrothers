import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/media_purpose.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'upload_media_state.freezed.dart';

@freezed
abstract class UploadMediaState with _$UploadMediaState {
  const factory UploadMediaState({
    File? file,
    MediaType? mediaType,
    MediaPurpose? mediaPurpose,
    @Default(false) bool isLoading,
    String? downloadUrl,
    String? errorMessage,
  }) = _UploadMediaState;
}