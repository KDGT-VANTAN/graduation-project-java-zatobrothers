import 'package:reimi_app/domain/read_models/go_out_plan_read_model.dart';
import 'package:reimi_app/domain/read_models/go_out_suggestion_read_model.dart';
import 'package:reimi_app/presentation/features/go_out/states/go_out_suggestion_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_out_suggestion_notifier.g.dart';

@riverpod
class GoOutSuggestionNotifier extends _$GoOutSuggestionNotifier {
  @override
  GoOutSuggestionState build() {
    return const GoOutSuggestionState();
  }

  Future<void> init() async {
    await loadGoOutSuggestion();
  }

  Future<void> loadGoOutSuggestion() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      state = state.copyWith(
        suggestion: GoOutSuggestionReadModel(
          date: DateTime.now(),
          place: '東京都渋谷区',
          goOutPlan: const GoOutPlanReadModel(
            title: '映画鑑賞',
            description: 'お二人の共通の「雨の日にやりたいこと」より',
          ),
          weatherTrendency: '一日を通して雨が降る見込みです。傘を忘れずにお持ちください。',
        ),
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await loadGoOutSuggestion();
  }
}
