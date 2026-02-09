import 'package:reimi_app/domain/read_models/ai_matching_user_read_model.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/presentation/features/matching/states/ai_matching_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_matching_notifier.g.dart';

@riverpod
class AIMatchingNotifier extends _$AIMatchingNotifier {
  @override
  AIMatchingState build() {
    return const AIMatchingState();
  }

  Future<void> init() async {
    await loadAIMatchingUsers();
  }

  Future<void> loadAIMatchingUsers() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      state = state.copyWith(
        user: AIMatchingUserReadModel(
          id: 'user_001',
          name: 'あおい',
          mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
          birthDate: DateTime(2001, 5, 15),
          address: Address.tokyo,
          typeImageUrl:
              Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
          typeCode: WeatherPersonalityCode.spoe,
          typeName: 'トレーニーラッコ',
          isTodayReported: true,
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
}
