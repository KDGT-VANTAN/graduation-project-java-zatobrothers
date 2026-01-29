import 'package:freezed_annotation/freezed_annotation.dart';

part 'unmessaged_match_user_read_model.freezed.dart';

@freezed
abstract class UnmessagedMatchUserReadModel with _$UnmessagedMatchUserReadModel {
  const factory UnmessagedMatchUserReadModel({
    required String id,
    required String mainPhotoUrl,
  }) = _UnmessagedMatchUserReadModel;
}
