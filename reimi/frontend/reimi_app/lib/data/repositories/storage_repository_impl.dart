import 'dart:io';
import 'package:reimi_app/data/datasources/remote/storage_remote_datasource.dart';
import 'package:reimi_app/domain/repositories/storage_repository.dart';

class StorageRepositoryImpl implements StorageRepository {
  const StorageRepositoryImpl(this._remote);

  final StorageRemoteDataSource _remote;

  @override
  Future<String> uploadFile({
    required String path,
    required File file,
    String? contentType,
  }) {
    return _remote.uploadFile(path: path, file: file);
  }

  @override
  Future<void> deleteFile({required String path}) {
    return _remote.deleteFile(path: path);
  }
}
