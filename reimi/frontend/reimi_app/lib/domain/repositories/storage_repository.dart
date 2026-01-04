import 'dart:io';

abstract class StorageRepository {
  Future<String> uploadFile({
    required String path,
    required File file,
    String? contentType,
  });

  Future<void> deleteFile({required String path});
}
