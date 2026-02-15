import 'package:reimi_app/data/datasources/remote/weather_personality_remote_datasource.dart';
import 'package:reimi_app/data/dtos/axis_feature_dto.dart';
import 'package:reimi_app/data/dtos/behavior_tendency_dto.dart';
import 'package:reimi_app/data/dtos/test_weather_personality_dto.dart';
import 'package:reimi_app/data/dtos/type_compatibility_dto.dart';
import 'package:reimi_app/data/dtos/weather_personality_detail_dto.dart';
import 'package:reimi_app/data/dtos/weather_personality_result_dto.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_polarity.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class WeatherPersonalityMockDataSource
    implements WeatherPersonalityRemoteDataSource {
  const WeatherPersonalityMockDataSource();

  @override
  Future<void> testWeatherPersonality(TestWeatherPersonalityDto dto) async {}

  @override
  Future<WeatherPersonalityResultDto> fetchWeatherPersonalityResult() async {
    return mockWeatherPersonalityResult;
  }

  @override
  Future<WeatherPersonalityDetailDto> fetchWeatherPersonalityDetail(
      String userId) async {
    return mockWeatherPersonalityDetail;
  }
}

final mockWeatherPersonalityResult = WeatherPersonalityResultDto(
  typeCode: WeatherPersonalityCode.spoe,
  typeName: 'トレーニーラッコ',
  typeCatchphrase: '感情で揺れ、計画で浮かぶ。日々バランス感覚を鍛えている存在。',
  typeImageUrl: Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
  rulingStatement:
      '神様は、前世のあなたが\n空模様を確認してから一日を始める姿を、何度も見ていました。\n雨が降りそうな日は少し不安そうに、\n晴れの日には理由もなく機嫌がよくなる。\nけれどあなたは、ただ振り回される存在ではありませんでした。\n落ち込むことを知っていたから、\n前もって心の準備をし、\n楽しめる未来をちゃんと確保していたのです。\n感情を抱えたまま溺れずに、\n計画という浮き輪で水面に浮かび続けたその生き方を、\n神様は「実にラッコらしい」と評価しました。\nよって、あなたは\nトレーニーラッコとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '天気・空気・人の機嫌を即座に察知。ちょっとした曇り空でも「今日はそういう日かも」と感じ取る。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '感情が揺れることを前提に、「落ちた時用の逃げ道」をあらかじめ用意する賢さ。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '家にこもると余計に気分が沈むタイプ。気分が良い日は、理由なく外に出たくなる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '効率よりも「気持ちよくできたか」を重視。心が納得しないと、どんな正解でも選ばない。',
    ),
  ],
  userAxisScore: {
    WeatherPersonalityAxis.sensitivity: 8,
    WeatherPersonalityAxis.preparedness: 1,
    WeatherPersonalityAxis.activity: 7,
    WeatherPersonalityAxis.motivation: 5,
  },
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気予報を見てから予定を組み直す',
      detail: '「雨か…じゃあカフェ多めの日にしよう」と柔軟に修正。',
    ),
    const BehaviorTendencyDto(
      summary: '落ち込む未来を想定して先回りする',
      detail: '元気なうちに好きな音楽や予定をストックしておく。',
    ),
    const BehaviorTendencyDto(
      summary: '周囲の空気が悪いと、無意識に整えにいく',
      detail: '雑談を振ったり、ちょっとした冗談を入れたり。',
    ),
    const BehaviorTendencyDto(
      summary: '気分が乗ると一気に行動量が跳ね上がる',
      detail: '晴れの日は「今日いける気がする」で全部片付ける。',
    ),
    const BehaviorTendencyDto(
      summary: '自分より他人の感情に敏感',
      detail: '「あ、この人今日ちょっと沈んでるな」にすぐ気づく。',
    ),
  ],
  godsMessage: 'あなたは、感情を弱点にせず、扱い方を知っていた珍しい存在です。\n\n'
      '揺れるのは悪いことではありません。\n'
      '揺れながらも浮いていられるなら、それは才能です。',
);

final mockWeatherPersonalityDetail = WeatherPersonalityDetailDto(
  typeCode: WeatherPersonalityCode.spoe,
  typeName: 'トレーニーラッコ',
  typeCatchphrase: '感情で揺れ、計画で浮かぶ。天気予報を信じすぎるラッコ。',
  typeImageUrl: Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '空模様を確認してから一日を始める姿を、何度も見ていました。\n\n'
      '雨が降りそうな日は少し不安そうに、\n'
      '晴れの日には理由もなく機嫌がよくなる——\n\n'
      'その姿は、まるで波に身を任せるラッコのようでした。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '天気・空気・人の機嫌を即座に察知。ちょっとした曇り空でも「今日はそういう日かも」と感じ取る。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '感情が揺れることを前提に、「落ちた時用の逃げ道」をあらかじめ用意する賢さ。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '家にこもると余計に気分が沈むタイプ。気分が良い日は、理由なく外に出たくなる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '効率よりも「気持ちよくできたか」を重視。心が納得しないと、どんな正解でも選ばない。',
    ),
  ],
  userAxisScore: {
    WeatherPersonalityAxis.sensitivity: 8,
    WeatherPersonalityAxis.preparedness: 1,
    WeatherPersonalityAxis.activity: 7,
    WeatherPersonalityAxis.motivation: 5,
  },
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気予報を見てから予定を組み直す',
      detail: '「雨か…じゃあカフェ多めの日にしよう」と柔軟に修正。',
    ),
    const BehaviorTendencyDto(
      summary: '落ち込む未来を想定して先回りする',
      detail: '元気なうちに好きな音楽や予定をストックしておく。',
    ),
    const BehaviorTendencyDto(
      summary: '周囲の空気が悪いと、無意識に整えにいく',
      detail: '雑談を振ったり、ちょっとした冗談を入れたり。',
    ),
    const BehaviorTendencyDto(
      summary: '気分が乗ると一気に行動量が跳ね上がる',
      detail: '晴れの日は「今日いける気がする」で全部片付ける。',
    ),
    const BehaviorTendencyDto(
      summary: '自分より他人の感情に敏感',
      detail: '「あ、この人今日ちょっと沈んでるな」にすぐ気づく。',
    ),
  ],
  godsMessage: 'あなたは、感情を弱点にせず、扱い方を知っていた珍しい存在です。\n\n'
      '揺れるのは悪いことではありません。\n'
      '揺れながらも浮いていられるなら、それは才能です。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfor,
      typeName: '庭先のカラス',
      typeImageUrl:
          Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
      compatibilityPoint: '感受性と外向性が近く、計画と即応が自然に役割分担できる。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfoe,
      typeName: '大道芸レッサーパンダ',
      typeImageUrl: Assets
          .images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
      compatibilityPoint: '気分や空気感を共有しやすく、一緒にいるだけで前向きになれる。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfir,
      typeName: 'フリーランスモグラ',
      typeImageUrl:
          Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
      compatibilityPoint: '判断が合理と内向に寄りがちで、感情ベースの動きが伝わりにくい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfor,
      typeName: '崖の上のヤギ',
      typeImageUrl:
          Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
      compatibilityPoint: '行動は噛み合っても、感情への向き合い方がズレやすい。',
    ),
  ],
);
