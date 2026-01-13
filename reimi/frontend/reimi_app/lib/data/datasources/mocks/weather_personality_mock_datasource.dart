import 'package:reimi_app/data/datasources/remote/weather_personality_remote_datasource.dart';
import 'package:reimi_app/data/dtos/test_weather_personality_dto.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class WeatherPersonalityMockDataSource
    implements WeatherPersonalityRemoteDataSource {
  const WeatherPersonalityMockDataSource();

  @override
  Future<void> testWeatherPersonality(TestWeatherPersonalityDto dto) async {}

  @override
  Future<WeatherPersonalityResultReadModel>
      fetchWeatherPersonalityResult() async {
    return mockWeatherPersonalityResult;
  }
}

final mockWeatherPersonalityResult = WeatherPersonalityResultReadModel(
  typeCode: 'SP0E',
  typeName: 'トレーニーラッコ',
  typeCatchphrase: '感情で揺れ、計画で浮かぶ。天気予報を信じすぎるラッコ。',
  typeCharacterImageUrl:
      Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '空模様を確認してから一日を始める姿を、何度も見ていました。\n\n'
      '雨が降りそうな日は少し不安そうに、\n'
      '晴れの日には理由もなく機嫌がよくなる——\n\n'
      'その姿は、まるで波に身を任せるラッコのようでした。',
  axisFeatures: [
    '天気・空気・人の機嫌を即座に察知。ちょっとした曇り空でも「今日はそういう日かも」と感じ取る。',
    '感情が揺れることを前提に、「落ちた時用の逃げ道」をあらかじめ用意する賢さ。',
    '家にこもると余計に気分が沈むタイプ。気分が良い日は、理由なく外に出たくなる。',
    '効率よりも「気持ちよくできたか」を重視。心が納得しないと、どんな正解でも選ばない。',
  ],
  axisScore: [8, 8, 8, 8],
  behaviorTendencyList: [
    '天気予報を見てから予定を組み直す。「雨か…じゃあカフェ多めの日にしよう」と柔軟に修正。',
    '落ち込む未来を想定して先回りする。元気なうちに好きな音楽や予定をストックしておく。',
    '周囲の空気が悪いと、無意識に整えにいく。雑談を振ったり、ちょっとした冗談を入れたり。',
    '気分が乗ると一気に行動量が跳ね上がる。晴れの日は「今日いける気がする」で全部片付ける。',
    '自分より他人の感情に敏感。「あ、この人今日ちょっと沈んでるな」にすぐ気づく。',
  ],
  godsMessage: 'あなたは、感情を弱点にせず、扱い方を知っていた珍しい存在です。\n\n'
      '揺れるのは悪いことではありません。\n'
      '揺れながらも浮いていられるなら、それは才能です。',
);
