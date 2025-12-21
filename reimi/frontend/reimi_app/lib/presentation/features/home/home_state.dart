import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/home_user_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    List<HomeUserModel>? users,
  }) = _HomeState;
}
