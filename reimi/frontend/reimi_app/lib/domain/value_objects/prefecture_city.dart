import 'package:freezed_annotation/freezed_annotation.dart';

part 'prefecture_city.freezed.dart';

@freezed
abstract class PrefectureCity with _$PrefectureCity {
  const factory PrefectureCity({
    required String prefecture,
    required String city,
  }) = _PrefectureCity;

  const PrefectureCity._();

  String get fullName => '$prefecture$city';
}
