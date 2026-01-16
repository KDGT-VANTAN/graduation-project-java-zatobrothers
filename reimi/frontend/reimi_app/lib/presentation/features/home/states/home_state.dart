import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/home_user_read_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<HomeUserReadModel>[]) List<HomeUserReadModel> users,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _HomeState;
}
