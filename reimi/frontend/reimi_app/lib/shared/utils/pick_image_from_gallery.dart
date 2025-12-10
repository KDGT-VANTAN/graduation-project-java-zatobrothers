import 'dart:io';
import 'package:image_picker/image_picker.dart';

final ImagePicker _picker = ImagePicker();
File? pickedImageFile;

Future<File?> pickImageFromGallery() async {
  final XFile? image = await _picker.pickImage(
    source: ImageSource.gallery,
    imageQuality: 85, // 85%品質でJPEGに自動変換（0-100）
    maxWidth: 1024, // 任意：幅を制限して軽量化
    maxHeight: 1024,
    preferredCameraDevice: CameraDevice.rear, // カメラ時は後面カメラ優先（任意）
  );
  if (image == null) return null;
  return pickedImageFile = File(image.path);
}

Future<File?> pickImageFromCamera() async {
  final XFile? picked = await _picker.pickImage(
    source: ImageSource.camera,
    imageQuality: 85, // カメラ撮影時もJPEG出力
    preferredCameraDevice: CameraDevice.rear,
  );
  if (picked == null) return null;
  return File(picked.path);
}
