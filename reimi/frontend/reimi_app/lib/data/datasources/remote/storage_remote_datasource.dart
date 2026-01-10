import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

abstract class StorageRemoteDataSource {
  Future<String> uploadFile({
    required String path,
    required File file,
    String? contentType,
  });
  Future<void> deleteFile({required String path});
}

class StorageRemoteDataSourceImpl implements StorageRemoteDataSource {
  const StorageRemoteDataSourceImpl(this._firebaseStorage);

  final FirebaseStorage _firebaseStorage;

  @override
  Future<String> uploadFile({
    required String path,
    required File file,
    String? contentType,
  }) async {
    final ref = _firebaseStorage.ref().child(path);
    final metadata =
        contentType != null ? SettableMetadata(contentType: contentType) : null;

    final task = await ref.putFile(file, metadata);
    // 成功時にダウンロード URL を返す
    return await task.ref.getDownloadURL();
  }

  @override
  Future<void> deleteFile({required String path}) async {
    await _firebaseStorage.ref().child(path).delete();
  }
}
