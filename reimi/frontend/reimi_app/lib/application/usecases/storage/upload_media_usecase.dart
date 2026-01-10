import 'dart:io';
import 'package:reimi_app/domain/repositories/storage_repository.dart';
import 'package:reimi_app/domain/value_objects/media_purpose.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

class UploadMediaUseCase {
  const UploadMediaUseCase(this._repository);
  final StorageRepository _repository;

  Future<String> call({
    required String userId,
    required File file,
    required MediaType mediaType,
    required MediaPurpose mediaPurpose,
    String? ownerId,
  }) async {
    final base = switch (mediaPurpose) {
      MediaPurpose.mainPhoto => 'users/$userId/mainPhoto',
      MediaPurpose.subPhoto => 'users/$userId/subPhoto',
      MediaPurpose.message => 'messages/$userId/$ownerId',
      MediaPurpose.weatherReport => 'weatherReports/$userId/$ownerId',
    };

    final extension = switch (mediaType) {
      MediaType.image => 'jpg',
      MediaType.video => 'mp4',
    };

    final contentType = switch (mediaType) {
      MediaType.image => 'image/jpeg',
      MediaType.video => 'video/mp4',
    };

    final path = '$base/${DateTime.now().millisecondsSinceEpoch}.$extension';

    return _repository.uploadFile(
      path: path,
      file: file,
      contentType: contentType,
    );
  }
}
