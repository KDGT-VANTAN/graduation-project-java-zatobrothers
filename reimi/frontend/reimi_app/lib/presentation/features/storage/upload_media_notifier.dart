import 'dart:io';
import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/value_objects/media_purpose.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/presentation/features/storage/upload_media_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'upload_media_notifier.g.dart';

@riverpod
class UploadMediaNotifier extends _$UploadMediaNotifier {
  final _picker = ImagePicker();

  @override
  UploadMediaState build() {
    return const UploadMediaState();
  }

  Future<File?> pickImage({required MediaPurpose mediaPurpose}) async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return null;
    state = state.copyWith(
      file: File(picked.path),
      mediaType: MediaType.image,
      mediaPurpose: mediaPurpose,
      errorMessage: null,
    );
    return state.file;
  }

  Future<void> pickVideo({required MediaPurpose mediaPurpose}) async {
    final picked = await _picker.pickVideo(source: ImageSource.gallery);
    if (picked == null) return;
    state = state.copyWith(
      file: File(picked.path),
      mediaType: MediaType.video,
      mediaPurpose: mediaPurpose,
      errorMessage: null,
    );
  }

  Future<void> upload({
    required String userId,
    String? ownerId,
  }) async {
    final file = state.file;
    final mediaType = state.mediaType;
    final mediaPurpose = state.mediaPurpose;

    if (file == null || mediaType == null || mediaPurpose == null) {
      state = state.copyWith(errorMessage: 'メディアが選択されていません');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final usecase = ref.read(uploadMediaUseCaseProvider);
      final url = await usecase.call(
        userId: userId,
        file: file,
        mediaType: switch (mediaType) {
          MediaType.image => MediaType.image,
          MediaType.video => MediaType.video,
        },
        mediaPurpose: mediaPurpose,
        ownerId: ownerId,
      );
      state = state.copyWith(
        isLoading: false,
        downloadUrl: url,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }
}
