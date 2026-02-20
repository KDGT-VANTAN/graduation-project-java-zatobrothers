import 'package:reimi_app/data/datasources/remote/weather_personality_remote_datasource.dart';
import 'package:reimi_app/data/dtos/axis_feature_dto.dart';
import 'package:reimi_app/data/dtos/behavior_tendency_dto.dart';
import 'package:reimi_app/data/dtos/test_weather_personality_dto.dart';
import 'package:reimi_app/data/dtos/type_compatibility_dto.dart';
import 'package:reimi_app/data/dtos/weather_personality_character_detail_dto.dart';
import 'package:reimi_app/data/dtos/weather_personality_character_dto.dart';
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

  @override
  Future<WeatherPersonalityCharacterDetailDto> fetchWeatherPersonalityCharacter(
    String typeCode,
  ) async {
    switch (typeCode) {
      case 'SPOE':
        return spoeTraineeSeaOtter;
      case 'SPOR':
        return sporPerfectionistLion;
      case 'SPIE':
        return spieSentimentalSquirrel;
      case 'SPIR':
        return spirFieldWorkerBeaver;
      case 'SFOE':
        return sfoeStreetPerformingRedPanda;
      case 'SFOR':
        return sforCrowsInTheGarden;
      case 'SFIE':
        return sfieFamilyCat;
      case 'SFIR':
        return sfirMinimalistHermitCrab;
      case 'NPOE':
        return npoeDolphinsInTheAquarium;
      case 'NPOR':
        return nporConsultBaldEagle;
      case 'NPIE':
        return npieMentorOwl;
      case 'NPIR':
        return npirWorkingMoleRat;
      case 'NFOE':
        return nfoeVibesRisingParrot;
      case 'NFOR':
        return nforGoatOnTheCliff;
      case 'NFIE':
        return nfieSoftOctopus;
      case 'NFIR':
        return nfirFreelanceMole;
    }
    return spoeTraineeSeaOtter;
  }

  @override
  Future<List<WeatherPersonalityCharacterDto>>
      fetchWeatherPersonalityCharacters() async {
    return mockWeatherPersonalityCharacters;
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

final mockWeatherPersonalityCharacters = [
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.spoe,
    typeName: 'トレーニーラッコ',
    typeCatchphrase: '感情で揺れ、計画で浮かぶ。天気予報を信じすぎるラッコ。',
    typeImageUrl:
        Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.spor,
    typeName: '完璧主義ライオン',
    typeCatchphrase: '感情を感じきったうえで、最短距離を選ぶ王。',
    typeImageUrl:
        Assets.images.weatherPersonality.sporPerfectionistLionImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.spie,
    typeName: 'センチメンタリス',
    typeCatchphrase: '外は静か、内側は嵐。考え続ける感情の保管庫。',
    typeImageUrl:
        Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.spir,
    typeName: '現場職ビーバー',
    typeCatchphrase: '派手さはない。だが一番、壊れにくい。',
    typeImageUrl:
        Assets.images.weatherPersonality.spirFieldWorkerBeaverImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.sfoe,
    typeName: '大道芸レッサーパンダ',
    typeCatchphrase: '天気次第で人生が変わる。でも、だいたい楽しい。',
    typeImageUrl:
        Assets.images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.sfor,
    typeName: '庭先のカラス',
    typeCatchphrase: '考える前に動き、動きながら正解に近づく。',
    typeImageUrl:
        Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.sfie,
    typeName: '実家のネコ',
    typeCatchphrase: '今日は何もしない。それが、いちばんの回復。',
    typeImageUrl: Assets.images.weatherPersonality.sfieFamilyCatImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.sfir,
    typeName: 'ミニマリストヤドカリ',
    typeCatchphrase: '持たない。振り回されない。ちゃんと終わらせる。',
    typeImageUrl:
        Assets.images.weatherPersonality.sfirMinimalistHermitCrabImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.npoe,
    typeName: '水族館のイルカ',
    typeCatchphrase: '気分じゃない。でも、魅せると決めた。',
    typeImageUrl:
        Assets.images.weatherPersonality.npoeDolphinsInTheAquariumImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.npor,
    typeName: 'コンサルハクトウワシ',
    typeCatchphrase: '感情を排し、最短で勝ちに行く。',
    typeImageUrl:
        Assets.images.weatherPersonality.nporConsultBaldEagleImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.npie,
    typeName: 'メンターフクロウ',
    typeCatchphrase: '語らずとも、答えはもう見えている。',
    typeImageUrl: Assets.images.weatherPersonality.npieMentorOwlImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.npir,
    typeName: 'はたらきデバネズミ',
    typeCatchphrase: '今日も黙って、手順を守る。',
    typeImageUrl: Assets.images.weatherPersonality.npirWorkingMoleRatImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.nfoe,
    typeName: 'バイブス上がりオウム',
    typeCatchphrase: 'ノってる空気？今つくるけど。',
    typeImageUrl:
        Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.nfor,
    typeName: '崖の上のヤギ',
    typeCatchphrase: '感情で揺れ、計画で浮かぶ。天気予報を信じすぎるラッコ。',
    typeImageUrl: Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.nfie,
    typeName: 'やわらかタコ',
    typeCatchphrase: '考えてないようで、全部つながってる。',
    typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
  ),
  WeatherPersonalityCharacterDto(
    typeCode: WeatherPersonalityCode.nfir,
    typeName: 'フリーランスモグラ',
    typeCatchphrase: '頼まれてないけど、もう直してある。',
    typeImageUrl: Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
  ),
];

// TODO: モックデータとして、一時的に記述
final spoeTraineeSeaOtter = WeatherPersonalityCharacterDetailDto(
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

final sporPerfectionistLion = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.spor,
  typeName: '完璧主義ライオン',
  typeCatchphrase: '感情を感じきったうえで、最短距離を選ぶ王。',
  typeImageUrl:
      Assets.images.weatherPersonality.sporPerfectionistLionImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '空の違和感に誰よりも早く気づいていたことを覚えています。\n\n'
      '雲の厚み、風の湿り気、\n'
      'そのすべてを「気分」ではなく\n'
      '行動判断の材料として扱っていました。\n\n'
      '不安を感じなかったわけではありません。\n'
      'むしろ、人一倍感じていたでしょう。\n\n'
      'しかしあなたは、\n'
      'その感情を放置せず、\n'
      '計画へ、準備へ、最適解へと変換しました。\n\n'
      '周囲が迷っている間に、\n'
      'あなたはもう次の一手を打っていた。\n\n'
      '神様はその姿を見て、こう裁定しました。\n'
      '「この者は、感情を支配しているのではない。感情を使いこなしている」\n\n'
      'よってあなたは、\n'
      '完璧主義ライオンとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '微妙な違和感や失敗の兆しを早期察知。「なんか嫌な予感」がだいたい当たる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '最悪を想定し、起こらないようにするのではなく「起きても勝てる状態」を作る。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '現場に出て指揮を執るタイプ。自分が前に立つことで全体が安定する。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '情緒は理解するが、最終判断は合理。「気持ちはわかる。でも今回はこれが最善だ」。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天候・体調・空気感を加味して予定を再設計',
      detail: '雨なら移動ルートを変更、暑そうなら重要タスクを先に片付ける。',
    ),
    const BehaviorTendencyDto(
      summary: 'トラブルが起きる前に手を打つ',
      detail: '「まだ大丈夫だけど、今のうちに対処しとくか」で先回り。',
    ),
    const BehaviorTendencyDto(
      summary: '感情的な場面でも判断がブレにくい',
      detail: '内心はザワついていても、必要な指示だけを冷静に出す。',
    ),
    const BehaviorTendencyDto(
      summary: '任されると一気にギアが上がる',
      detail: '「自分がやるなら、最適解で行く」と覚悟を決める。',
    ),
    const BehaviorTendencyDto(
      summary: '周囲からの信頼が厚い',
      detail: '「厳しいけど結果を出す」「ついていけば大丈夫」と評価されやすい。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      '感情に気づける強さと、\n'
      '決断を下せる覚悟を両方持っていました。\n\n'
      '完璧を求めるのは、\n'
      '守りたい未来があるからです。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spoe,
      typeName: 'トレーニーラッコ',
      typeImageUrl:
          Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
      compatibilityPoint: '感情への理解があり、あなたの推進力を柔らかく支えてくれる。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfor,
      typeName: '庭先のカラス',
      typeImageUrl:
          Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
      compatibilityPoint: '現場対応力が高く、計画と即断の役割分担が明確。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfie,
      typeName: 'やわらかタコ',
      typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
      compatibilityPoint: '創作優先のペースが、目的志向の強さと噛み合いにくい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfoe,
      typeName: 'バイブス上がりオウム',
      typeImageUrl:
          Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
      compatibilityPoint: '感情主導の社交性が、合理的判断を乱される感覚につながる。',
    ),
  ],
);

final spieSentimentalSquirrel = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.spie,
  typeName: 'センチメンタリス',
  typeCatchphrase: '外は静か、内側は嵐。考え続ける感情の保管庫。',
  typeImageUrl:
      Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '雨の日に、外へ出なかった理由を知っていました。\n\n'
      'それは怠けでも、逃避でもありません。\n'
      'あなたは、\n'
      '空模様が心に落とす影を、\n'
      'そのまま抱え込んでしまう人だったのです。\n\n'
      '風が強い日は思考が深くなり、\n'
      '曇りの日は過去を反芻する。\n\n'
      'それでもあなたは、\n'
      '感情に流されきることはありませんでした。\n\n'
      '感じたものを言葉に変え、\n'
      '整理し、理解し、\n'
      'いつか使える形に静かに保存していたのです。\n\n'
      '神様は、その姿を見てこう言いました。\n'
      '「この者は、世界をすぐに動かさない。\n'
      'だが、世界を深く理解している」\n\n'
      'よってあなたは、\n'
      'センチメンタリスとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '天気・言葉・沈黙にまで反応。他人が気づかない微細な違和感を拾う。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '感情をその場で処理せず、「あとで向き合うための余白」を確保する。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '外界の刺激が多いと消耗しやすい。一人の時間が思考の燃料。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '正しさよりも「腑に落ちるか」を重視。感情が納得しないと前に進めない。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気が悪いと予定を静かなものに切り替える',
      detail: '外出を減らし、考え事や記録の時間を増やす。',
    ),
    const BehaviorTendencyDto(
      summary: '感情を即座に言語化しない',
      detail: 'まず心の中で熟成させ、後日ふとした一言で核心を突く。',
    ),
    const BehaviorTendencyDto(
      summary: '人の相談を受けると本領発揮',
      detail: '表面的な話ではなく、その人が言えなかった感情を拾う。',
    ),
    const BehaviorTendencyDto(
      summary: '過去の出来事を何度も反芻する',
      detail: '後悔ではなく、意味を見つけるための思考として行う。',
    ),
    const BehaviorTendencyDto(
      summary: '静かな信頼を集めやすい',
      detail: '「話すと深い」「この人に話すと整理される」と言われやすい。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      '感情をすぐに手放さなかったからこそ、\n'
      '他人の痛みを理解できました。\n\n'
      '世界を支える役割は、\n'
      'いつも前に出る者だけのものではありません。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spir,
      typeName: '現場職ビーバー',
      typeImageUrl:
          Assets.images.weatherPersonality.spirFieldWorkerBeaverImage.path,
      compatibilityPoint: '感受性を理解したうえで、現実的に支えてくれる存在。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfie,
      typeName: '実家のネコ',
      typeImageUrl: Assets.images.weatherPersonality.sfieFamilyCatImage.path,
      compatibilityPoint: '感情の深さを共有でき、安心して内面を開ける。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfor,
      typeName: '崖の上のヤギ',
      typeImageUrl:
          Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
      compatibilityPoint: '外向的で合理的な行動に、心が置き去りになりやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfir,
      typeName: 'フリーランスモグラ',
      typeImageUrl:
          Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
      compatibilityPoint: '感情に踏み込まれず、距離を感じやすい。',
    ),
  ],
);

final spirFieldWorkerBeaver = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.spir,
  typeName: '現場職ビーバー',
  typeCatchphrase: '派手さはない。だが一番、壊れにくい。',
  typeImageUrl:
      Assets.images.weatherPersonality.spirFieldWorkerBeaverImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '雨の日に、作業の精度が上がっていたことを知っていました。\n\n'
      '外が静まり、世界が少しだけ鈍くなるとき、\n'
      'あなたの思考は最も澄んでいたのです。\n\n'
      '強い日差しや喧騒の中ではなく、\n'
      '曇天や雨音の下で、\n'
      'あなたは黙々と手を動かしていました。\n\n'
      '失敗を恐れていたのではありません。\n'
      'ただ、\n'
      '一度作るものは、長く使える形にしたかった。\n\n'
      '誰かが前に出ている間、\n'
      'あなたは後ろで基礎を固め続けた。\n\n'
      '神様はその姿を見て、こう裁定しました。\n'
      '「この者は、目立たぬ場所で世界を止めなかった。\n'
      'むしろ、崩れないように支えていた」\n\n'
      'よってあなたは、\n'
      '現場職ビーバーとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '小さな異変や不具合を見逃さない。「まだ大丈夫」に一番早く違和感を覚える。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '行き当たりばったりを嫌い、手順・段取り・安全策を丁寧に積み上げる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '一人で集中できる環境が最適。静かな場所ほどパフォーマンスが上がる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '感情は感じるが、判断は常に現実的。「使えるか」「続くか」を最優先。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '環境条件を読み取り、最も集中できる状況を自分で作る',
      detail: '雨音や気温を味方に、カフェや室内で一気に作業を片付ける。',
    ),
    const BehaviorTendencyDto(
      summary: '見えないリスクを先に潰す',
      detail: 'トラブルが起きる前に、仕様・道具・手順を見直す。',
    ),
    const BehaviorTendencyDto(
      summary: '自分の仕事を誇張しない',
      detail: '成果を語らず、「問題なかったこと」を淡々と報告。',
    ),
    const BehaviorTendencyDto(
      summary: '頼まれると断らないが、無理はしない',
      detail: 'できる範囲を正確に見極め、確実にやり切る。',
    ),
    const BehaviorTendencyDto(
      summary: '安心感で評価されやすい',
      detail: '「この人が関わってると安心」「最後に残る仕事」と言われる。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      '世界が派手に進むことよりも、\n'
      '世界が止まらないことを選びました。\n\n'
      'その静かな選択が、\n'
      '多くの未来を支えています。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spie,
      typeName: 'センチメンタリス',
      typeImageUrl:
          Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
      compatibilityPoint: '内面の繊細さを理解し合い、安定した関係を築ける。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfir,
      typeName: 'ミニマリストヤドカリ',
      typeImageUrl:
          Assets.images.weatherPersonality.sfirMinimalistHermitCrabImage.path,
      compatibilityPoint: '静かな実務力同士で、無言でも信頼が成り立つ。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfoe,
      typeName: 'バイブス上がりオウム',
      typeImageUrl:
          Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
      compatibilityPoint: '感情表現の方向性が違い、気疲れしやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfor,
      typeName: '崖の上のヤギ',
      typeImageUrl:
          Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
      compatibilityPoint: 'スピード感が合わず、慎重さが評価されにくい。',
    ),
  ],
);

final sfoeStreetPerformingRedPanda = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.sfoe,
  typeName: '大道芸レッサーパンダ',
  typeCatchphrase: '天気次第で人生が変わる。でも、だいたい楽しい。',
  typeImageUrl:
      Assets.images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '天気と一緒にテンションが上下していたことを、\n'
      '隠すことなく見ていました。\n\n'
      '晴れた日は世界の中心。\n'
      '雨の日は少しだけ影が薄くなる。\n\n'
      'けれどあなたは、\n'
      'その揺れを直そうとはしませんでした。\n\n'
      'その日の空、その日の気分、\n'
      'その瞬間のひらめきに身を任せ、\n'
      '人前に立ち続けていたのです。\n\n'
      '失敗も多かったでしょう。\n'
      '予定が崩れた日も、落ち込んだ夜もあったはずです。\n\n'
      'それでもあなたが現れると、\n'
      '場の空気が少し軽くなる。\n\n'
      '神様はそれを見て、こう裁定しました。\n'
      '「この者は、安定しない。\n'
      'だが、世界を楽しく歪ませる才能がある」\n\n'
      'よってあなたは、\n'
      '大道芸レッサーパンダとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '天気・音・人の視線に即反応。良くも悪くも、影響をそのまま受け取る。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: '計画よりノリ。思いついた瞬間が、いちばん行動に向いている。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '人がいる場所、にぎやかな場で力を発揮。一人きりはエネルギー切れしやすい。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '理屈より「今楽しいか」。感情が動かないことが最大のストレス。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '晴れの日は即アクティブ',
      detail: '「今日いける！」で予定を詰め込みすぎる。',
    ),
    const BehaviorTendencyDto(
      summary: '天気が悪いと行動が急ブレーキ',
      detail: '外出をやめて、気分が戻るのを待つ。',
    ),
    const BehaviorTendencyDto(
      summary: '場の空気を変える一言を投げがち',
      detail: '真面目な場でも、つい冗談や軽いノリを差し込む。',
    ),
    const BehaviorTendencyDto(
      summary: '気分が乗っている時の爆発力がすごい',
      detail: '人を巻き込み、その場の主役になる。',
    ),
    const BehaviorTendencyDto(
      summary: '予測不能だが愛されやすい',
      detail: '「一緒にいると楽しい」「憎めない」と言われやすい。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      '安定を選ばなかったからこそ、\n'
      '世界に「余白」を作りました。\n\n'
      '楽しさは、\n'
      'いつも予定外の場所から生まれます。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spoe,
      typeName: 'トレーニーラッコ',
      typeImageUrl:
          Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
      compatibilityPoint: '感情の波を受け止めてもらえ、安心して動ける。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfor,
      typeName: '庭先のカラス',
      typeImageUrl:
          Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
      compatibilityPoint: '柔軟さは同じで、実用視点がブレーキ役になる。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfir,
      typeName: 'フリーランスモグラ',
      typeImageUrl:
          Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
      compatibilityPoint: '感情重視の行動が、理解されにくい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfor,
      typeName: '崖の上のヤギ',
      typeImageUrl:
          Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
      compatibilityPoint: '効率優先の判断に、自由さを奪われたように感じる。',
    ),
  ],
);

final sforCrowsInTheGarden = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.sfor,
  typeName: '庭先のカラス',
  typeCatchphrase: '考える前に動き、動きながら正解に近づく。',
  typeImageUrl: Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '天気が変わった瞬間に、もう動いていたことを覚えています。\n\n'
      '雨が降り出す前に場所を変え、\n'
      '風向きが変われば立ち位置を変える。\n\n'
      'あなたは、\n'
      '空模様を「感情」ではなく\n'
      '情報として扱っていました。\n\n'
      '不安も焦りも感じていたでしょう。\n'
      'けれどそれを抱え込むより早く、\n'
      '身体が先に反応していたのです。\n\n'
      '周囲が状況を整理している間に、\n'
      'あなたはもう次の手を打っていた。\n\n'
      '神様はその様子を見て、こう裁定しました。\n'
      '「この者は、完璧を待たない。\n'
      'だが、機会を逃さない」\n\n'
      'よってあなたは、\n'
      '庭先のカラスとして生まれ変わることになりました。',
  axisFeatures: const [
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '空気・変化・異変を瞬時に察知。「何かおかしい」に一番早く気づく。',
    ),
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: '計画よりも現場判断。予定は変えるためにあるもの。',
    ),
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '動きながら考えるタイプ。静止すると判断が鈍る。',
    ),
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '目的達成が最優先。感情は処理するもので、引きずるものではない。',
    ),
  ],
  behaviorTendencies: const [
    BehaviorTendencyDto(
      summary: '天気が怪しいと即ルート変更',
      detail: '「この道やめとこ」で被害を回避する判断が速い。',
    ),
    BehaviorTendencyDto(
      summary: 'トラブル時に自然と前に出る',
      detail: '誰かが指示する前に、もう役割分担を始めている。',
    ),
    BehaviorTendencyDto(
      summary: '情報が揃う前に暫定解で動く',
      detail: '完璧でなくても、動かないよりマシと知っている。',
    ),
    BehaviorTendencyDto(
      summary: '空気が悪い場から素早く抜ける',
      detail: '無駄な消耗を避ける判断が非常に速い。',
    ),
    BehaviorTendencyDto(
      summary: '気づいたら場を仕切っている',
      detail: '状況整理と意思決定を同時に進めている。',
    ),
  ],
  godsMessage: 'あなたは、\n\n'
      '迷っている時間そのものを\n'
      '最大のリスクだと理解していました。\n\n'
      '世界は、\n'
      '即応できる者によって救われる場面もあります。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spor,
      typeName: '完璧主義ライオン',
      typeImageUrl:
          Assets.images.weatherPersonality.sporPerfectionistLionImage.path,
      compatibilityPoint: '判断の速さと計画性が噛み合い、行動が一気に加速する。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfoe,
      typeName: '大道芸レッサーパンダ',
      typeImageUrl: Assets
          .images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
      compatibilityPoint: '感受性が近く、場の空気を読みながら自然に動ける。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfie,
      typeName: 'やわらかタコ',
      typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
      compatibilityPoint: '内向的な思考ペースに、歯がゆさを感じやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfoe,
      typeName: 'バイブス上がりオウム',
      typeImageUrl:
          Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
      compatibilityPoint: '感情判断の軸が異なり、意思決定がぶれやすい。',
    ),
  ],
);

final sfieFamilyCat = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.sfie,
  typeName: '実家のネコ',
  typeCatchphrase: '今日は何もしない。それが、いちばんの回復。',
  typeImageUrl: Assets.images.weatherPersonality.sfieFamilyCatImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '天気の悪い日に、無理をしなかったことを覚えています。\n\n'
      '雨が降れば、今日は静かに過ごす日。\n'
      '晴れたら、少しだけ気分が前を向く。\n\n'
      'あなたは、\n'
      '自分の心の天気を否定しませんでした。\n\n'
      '頑張れない日は、頑張らない。\n'
      '落ち込んだ日は、誰かのそばで丸くなる。\n\n'
      'それでも、不思議と\n'
      '人はあなたの近くで呼吸が楽になった。\n\n'
      '神様はその様子を見て、こう裁定しました。\n'
      '「この者は、前に進ませない。\n'
      'だが、人を壊さない」\n\n'
      'よってあなたは、\n'
      '実家のネコとして生まれ変わることになりました。',
  axisFeatures: const [
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '天気・声色・沈黙に敏感。他人の疲れや悲しみを自然に察知する。',
    ),
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: '無理に立てた予定より、今の気分を尊重する。',
    ),
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '家や安心できる場所が活動拠点。外に出るのは気分が整ってから。',
    ),
    AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '正しさより、やさしさ。「大丈夫？」の一言を自然に差し出す。',
    ),
  ],
  behaviorTendencies: const [
    BehaviorTendencyDto(
      summary: '天気が悪い日は、回復を最優先',
      detail: '外出を控え、心と体を休ませる判断を迷わない。',
    ),
    BehaviorTendencyDto(
      summary: '人の話を評価せずに聞く',
      detail: 'アドバイスより、「うんうん」を選ぶ。',
    ),
    BehaviorTendencyDto(
      summary: '場の緊張を、存在だけで和らげる',
      detail: '何も言わなくても、そこにいるだけで安心感が生まれる。',
    ),
    BehaviorTendencyDto(
      summary: '自分の感情に正直',
      detail: '疲れたら離れ、元気なときだけ寄っていく。',
    ),
    BehaviorTendencyDto(
      summary: '安心できる人のそばに自然といる',
      detail: '言葉より距離感で信頼を示す。',
    ),
  ],
  godsMessage: 'あなたは、\n\n'
      '無理をしなかったからこそ、\n'
      '人の心を壊さずに済みました。\n\n'
      '休むことも、\n'
      '世界を守る行為のひとつです。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spie,
      typeName: 'センチメンタリス',
      typeImageUrl:
          Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
      compatibilityPoint: '感情の深さを尊重し合える、静かな安心関係。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfir,
      typeName: 'ミニマリストヤドカリ',
      typeImageUrl:
          Assets.images.weatherPersonality.sfirMinimalistHermitCrabImage.path,
      compatibilityPoint: '互いに干渉しすぎず、心地よい距離を保てる。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfor,
      typeName: '崖の上のヤギ',
      typeImageUrl:
          Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
      compatibilityPoint: '行動量と外向性の差がストレスになりやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfir,
      typeName: 'フリーランスモグラ',
      typeImageUrl:
          Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
      compatibilityPoint: '実務優先の姿勢に、感情が置き去りになりがち。',
    ),
  ],
);

final sfirMinimalistHermitCrab = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.sfir,
  typeName: 'ミニマリストヤドカリ',
  typeCatchphrase: '持たない。振り回されない。ちゃんと終わらせる。',
  typeImageUrl:
      Assets.images.weatherPersonality.sfirMinimalistHermitCrabImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '天気の話題にほとんど乗らなかったことを覚えています。\n\n'
      '雨が降っても、\n'
      '「あ、そうなんだ」と言って\n'
      'いつも通りの作業に戻る。\n\n'
      'あなたは、\n'
      '空模様に心を奪われない代わりに、\n'
      '余計なものを一つずつ削っていました。\n\n'
      '気分が乱れそうになれば、\n'
      '環境を変え、持ち物を減らし、\n'
      '自分を守る殻を選び直す。\n\n'
      '派手な動きはありませんでした。\n'
      'けれど、\n'
      '途中で投げ出した仕事は一つもなかった。\n\n'
      '神様はその姿を見て、こう裁定しました。\n'
      '「この者は、感情を否定しない。\n'
      'ただ、最小限で扱っている」\n\n'
      'よってあなたは、\n'
      'ミニマリストヤドカリとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.sensitive,
      description: '実は刺激に弱い。だからこそ、情報・人・物を厳選する。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: 'きっちり決めすぎない。変えられる余白を常に残す。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '自分のペースを守れる環境が最重要。静かな場所で真価を発揮。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '「役に立つか」「続けられるか」が判断基準。感情は行動の邪魔にならない範囲で扱う。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気に左右されず、淡々とタスク処理',
      detail: '雨でも晴れでも、やることは変えない。',
    ),
    const BehaviorTendencyDto(
      summary: '環境を軽くすることで集中力を保つ',
      detail: '物を減らし、人付き合いも選別する。',
    ),
    const BehaviorTendencyDto(
      summary: '急な変更にも静かに対応',
      detail: '文句を言わず、さらっと切り替える。',
    ),
    const BehaviorTendencyDto(
      summary: '表に出ないが、実は要',
      detail: '気づくと、一番大事なところを任されている。',
    ),
    const BehaviorTendencyDto(
      summary: '静かだが信頼されやすい',
      detail: '「抜けると困る人」と言われがち。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      'すべてを感じてしまうからこそ、\n'
      '必要なものだけを残しました。\n\n'
      '軽さは、\n'
      '生き残るための知恵です。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spir,
      typeName: '現場職ビーバー',
      typeImageUrl:
          Assets.images.weatherPersonality.spirFieldWorkerBeaverImage.path,
      compatibilityPoint: '堅実さと感受性のバランスが取れる。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfie,
      typeName: '実家のネコ',
      typeImageUrl: Assets.images.weatherPersonality.sfieFamilyCatImage.path,
      compatibilityPoint: '静かな環境で、互いのペースを尊重できる。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfoe,
      typeName: 'バイブス上がりオウム',
      typeImageUrl:
          Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
      compatibilityPoint: '社交的すぎる環境に、消耗しやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfie,
      typeName: 'やわらかタコ',
      typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
      compatibilityPoint: '感情表現の方向性が合わない。',
    ),
  ],
);

final npoeDolphinsInTheAquarium = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.npoe,
  typeName: '水族館のイルカ',
  typeCatchphrase: '気分じゃない。でも、魅せると決めた。',
  typeImageUrl:
      Assets.images.weatherPersonality.npoeDolphinsInTheAquariumImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '天気を理由に予定を変えなかったことを覚えています。\n\n'
      '雨でも、曇りでも、\n'
      'あなたは同じ時間に現れ、\n'
      '同じ役割をこなしていました。\n\n'
      '感情がなかったわけではありません。\n'
      'ただあなたは、\n'
      'それを表に出すタイミングと場所を\n'
      '正確に選んでいたのです。\n\n'
      '見せるべき場面では、\n'
      '笑顔も盛り上がりも、\n'
      '計画通りに演出する。\n\n'
      '神様はその姿を見て、こう裁定しました。\n'
      '「この者は、気分で動かない。\n'
      'だが、人の気分を動かす」\n\n'
      'よってあなたは、\n'
      '水族館のイルカとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '天候や環境変化に左右されにくい。感情は安定しており、波が小さい。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '目的から逆算し、感情表現すら設計する。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '人前・舞台・注目される場で本領発揮。見られるほど、完成度が上がる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '情緒を軽視しない。ただし「自分のため」より「場のため」。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '盛り上げ役を自然に引き受ける',
      detail: '空気を読み、必要なテンションを出す。',
    ),
    const BehaviorTendencyDto(
      summary: '感情表現が安定している',
      detail: '昨日と今日で態度が変わらない。',
    ),
    const BehaviorTendencyDto(
      summary: '人からの見られ方を理解している',
      detail: '言動が「場に最適化」されている。',
    ),
    const BehaviorTendencyDto(
      summary: '長期視点の関係設計',
      detail: 'その場の盛り上がりより、次も一緒に動ける関係を重視する。',
    ),
    const BehaviorTendencyDto(
      summary: '安心感のある推進役',
      detail: '一緒にいると場が締まると言われやすい。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      '自分の感情よりも、\n'
      '場の感情を優先できました。\n\n'
      'それは、\n'
      '多くの人を導く資質です。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npor,
      typeName: 'コンサルハクトウワシ',
      typeImageUrl:
          Assets.images.weatherPersonality.nporConsultBaldEagleImage.path,
      compatibilityPoint: '計画性と外向性が一致し、強い推進力を生む。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfoe,
      typeName: 'バイブス上がりオウム',
      typeImageUrl:
          Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
      compatibilityPoint: '柔軟な社交性が、あなたの戦略を広げてくれる。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfir,
      typeName: 'ミニマリストヤドカリ',
      typeImageUrl:
          Assets.images.weatherPersonality.sfirMinimalistHermitCrabImage.path,
      compatibilityPoint: '感受性の高さに、対応コストを感じやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfor,
      typeName: '庭先のカラス',
      typeImageUrl:
          Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
      compatibilityPoint: '直感的判断が多く、戦略性が噛み合いにくい。',
    ),
  ],
);

final nporConsultBaldEagle = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.npor,
  typeName: 'コンサルハクトウワシ',
  typeCatchphrase: '感情を排し、最短で勝ちに行く。',
  typeImageUrl: Assets.images.weatherPersonality.nporConsultBaldEagleImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '空をほとんど見上げなかったことを覚えています。\n\n'
      '雨か晴れかは確認しない。\n'
      '必要なのは、目的と手段だけ。\n\n'
      'あなたにとって天候は、\n'
      '考慮に値しないノイズでした。\n\n'
      '迷いがなかったわけではありません。\n'
      'ただあなたは、\n'
      '迷いが生じる前に\n'
      '判断基準を決めきっていたのです。\n\n'
      '一度決めた方針は曲げない。\n'
      '状況が変わっても、\n'
      '原則は変えない。\n\n'
      '神様はその姿を見て、こう裁定しました。\n'
      '「この者は、世界を感じない。\n'
      'だが、世界を動かす」\n\n'
      'よってあなたは、\n'
      'コンサルハクトウワシとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '気分・天候・雰囲気に左右されない。判断は常に一定。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '原則・ルール・戦略を先に固める。例外は例外として処理。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '高所から全体を見渡す指揮官タイプ。現場に立つことで統率が効く。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '感情より成果。結果が出るかどうかがすべて。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気に関係なく行動が一定',
      detail: '雨でも晴れでも、スケジュールは同じ。',
    ),
    const BehaviorTendencyDto(
      summary: '判断基準が明文化されている',
      detail: '好き嫌いではなく、原則で決める。',
    ),
    const BehaviorTendencyDto(
      summary: '迷っている人に結論を与える',
      detail: '「今決めるべきはこれ」と道筋を示す。',
    ),
    const BehaviorTendencyDto(
      summary: '感情論を長引かせない',
      detail: '共感はするが、決断は早い。',
    ),
    const BehaviorTendencyDto(
      summary: '一貫性のある判断者',
      detail: '「ブレない」「厳しいが合理的」と評価されやすい。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      '感じることよりも、\n'
      '決め続けることを選びました。\n\n'
      '混乱の中では、\n'
      'その一貫性が秩序になります。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npoe,
      typeName: '水族館のイルカ',
      typeImageUrl:
          Assets.images.weatherPersonality.npoeDolphinsInTheAquariumImage.path,
      compatibilityPoint: '外向的リーダー同士で、役割分担が明確。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfor,
      typeName: '崖の上のヤギ',
      typeImageUrl:
          Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
      compatibilityPoint: '現場対応力が、あなたの計画を実行に移す。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfie,
      typeName: '実家のネコ',
      typeImageUrl: Assets.images.weatherPersonality.sfieFamilyCatImage.path,
      compatibilityPoint: '感情優先の姿勢が、非合理に見えやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfoe,
      typeName: '大道芸レッサーパンダ',
      typeImageUrl: Assets
          .images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
      compatibilityPoint: '判断基準の違いから、衝突しやすい。',
    ),
  ],
);

final npieMentorOwl = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.npie,
  typeName: 'メンターフクロウ',
  typeCatchphrase: '語らずとも、答えはもう見えている。',
  typeImageUrl: Assets.images.weatherPersonality.npieMentorOwlImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '天気を気にせず、夜を選んで考えていたことを覚えています。\n\n'
      '雨でも晴れでも、\n'
      'あなたの思考は一定の深さを保っていました。\n\n'
      '外が騒がしいほど、\n'
      '内側は静かになる。\n\n'
      'あなたは、\n'
      '感情を表に出すよりも、\n'
      'それを理解することに時間を使っていたのです。\n\n'
      'すぐに結論を言わない。\n'
      'だが、聞かれたときには\n'
      '必要な答えだけを差し出す。\n\n'
      '神様はその姿を見て、こう裁定しました。\n'
      '「この者は、場を導かない。\n'
      'だが、判断を深くする」\n\n'
      'よってあなたは、\n'
      'メンターフクロウとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '気分や天候に流されにくい。感情の波は小さく、安定している。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '情報を整理し、構造化するのが得意。思考には順序がある。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '静かな環境で集中力が最大化。一人の時間が不可欠。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '数字だけでなく、人の気持ちも考慮。ただし表現は控えめ。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気に関係なく、淡々と学び続ける',
      detail: '読書、調査、分析が日常。',
    ),
    const BehaviorTendencyDto(
      summary: '会話では聞き役に回りがち',
      detail: '話の全体像を把握してから言葉を選ぶ。',
    ),
    const BehaviorTendencyDto(
      summary: '質問されると核心を突く',
      detail: '長い説明ではなく、一言で本質を示す。',
    ),
    const BehaviorTendencyDto(
      summary: '感情的な場面でも冷静',
      detail: '共感はするが、飲み込まれない。',
    ),
    const BehaviorTendencyDto(
      summary: '思考の整理役',
      detail: '「話すと頭が整理される」「静かだが信頼できる」と言われやすい。',
    ),
  ],
  godsMessage: 'あなたは、\n'
      '声を張らなかったからこそ、\n'
      '思考を深く保てました。\n\n'
      '静けさは、\n'
      '知恵を育てる場所です。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npir,
      typeName: 'はたらきデバネズミ',
      typeImageUrl:
          Assets.images.weatherPersonality.npirWorkingMoleRatImage.path,
      compatibilityPoint: '内向的で計画的、静かに成果を出せる関係。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfie,
      typeName: 'やわらかタコ',
      typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
      compatibilityPoint: '創造性と分析力が補完し合う。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfor,
      typeName: '庭先のカラス',
      typeImageUrl:
          Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
      compatibilityPoint: '即断即決のスピードに疲れやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfoe,
      typeName: '大道芸レッサーパンダ',
      typeImageUrl: Assets
          .images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
      compatibilityPoint: '感情の起伏が大きく、集中が削がれる。',
    ),
  ],
);

final npirWorkingMoleRat = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.npir,
  typeName: 'はたらきデバネズミ',
  typeCatchphrase: '今日も黙って、手順を守る。',
  typeImageUrl: Assets.images.weatherPersonality.npirWorkingMoleRatImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '誰も見ていないところで、同じ作業を何度も確認していた姿を見ていました。\n\n'
      '晴れでも雨でも、\n'
      '周囲が浮き足立っていても、\n'
      'あなたの手は止まりません。\n\n'
      '気分でやらない。\n'
      '勢いで決めない。\n'
      '「正しいかどうか」それだけを基準に、\n'
      'あなたは行動していました。\n\n'
      '目立つ成果ではない。\n'
      'だが、欠けたら全体が崩れる仕事。\n\n'
      '神様は静かにこう裁定します。\n'
      '「この者は前に出ない。だが、崩れを許さない」\n\n'
      'よってあなたは、\n'
      'はたらきデバネズミとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '感情の影響をほとんど受けない。気分より手順を優先する。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.planned,
      description: '作業前に工程を明確化し、再現性と安定性を重視する。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '一人で黙々と進める環境が最適。長時間集中が可能。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '「役に立つか」「正しいか」が行動基準。合理性を優先する。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気が悪くても作業効率は変わらない',
      detail: 'むしろ静かで集中しやすいと感じる。',
    ),
    const BehaviorTendencyDto(
      summary: 'チェックリストと相性が抜群',
      detail: '見落としを極端に嫌い、確認を徹底する。',
    ),
    const BehaviorTendencyDto(
      summary: '同じ工程を同じ品質で繰り返すことに安心を覚える',
      detail: '平常運転を守る存在。',
    ),
    const BehaviorTendencyDto(
      summary: 'トラブル時に真価を発揮',
      detail: '淡々と原因を切り分け、修正へ導く。',
    ),
    const BehaviorTendencyDto(
      summary: '周囲からの信頼が厚い',
      detail: '「この人がOKなら大丈夫」と言われる最後の砦。',
    ),
  ],
  godsMessage: '派手さは、世界を動かします。\n\n'
      'だが、精度は世界を保ちます。\n\n'
      'あなたは、壊れない未来を作る者です。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npie,
      typeName: 'メンターフクロウ',
      typeImageUrl: Assets.images.weatherPersonality.npieMentorOwlImage.path,
      compatibilityPoint: '精度重視の思考を共有でき、安定した協力関係を築ける。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfir,
      typeName: 'フリーランスモグラ',
      typeImageUrl:
          Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
      compatibilityPoint: '静かな実務同士で無駄がなく、堅実な安定感がある。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfoe,
      typeName: '大道芸レッサーパンダ',
      typeImageUrl: Assets
          .images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
      compatibilityPoint: '感情主導の行動が読みにくく、判断基準が噛み合いにくい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spoe,
      typeName: 'トレーニーラッコ',
      typeImageUrl:
          Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
      compatibilityPoint: '気分変動への対応が負担になりやすい。',
    ),
  ],
);

final nforGoatOnTheCliff = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.nfor,
  typeName: '崖の上のヤギ',
  typeCatchphrase: '行ける？──じゃあ、もう行ってる。',
  typeImageUrl: Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '周囲が様子見している間に、すでに一歩踏み出していた姿を見ていました。\n\n'
      '空が曇れば足場を確認し、\n'
      '風が強ければ進路を変える。\n\n'
      '天気は感情ではなく、情報として扱われていました。\n\n'
      '考えすぎない。\n'
      'だが、無謀でもない。\n\n'
      '「今、動けるかどうか」\n'
      'その一点だけで判断し、\n'
      'あなたは前へ進み続けていました。\n\n'
      '神様はうなずき、こう告げます。\n'
      '「この者は迷わぬ。だが、足元を見ている」\n\n'
      'よってあなたは、\n'
      '崖の上のヤギとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '不安や気分に引きずられない。判断基準は常に現実。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: '計画よりも現場対応。その場で最適解を選ぶ。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '動いてこそ調子が出る。机上より現場派。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '成果・前進・実行が最優先。できるかどうかで決める。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気予報は「行動可否チェック」',
      detail: '良し悪しではなく、装備とルートの判断材料にする。',
    ),
    const BehaviorTendencyDto(
      summary: '「とりあえずやってみる」が口癖',
      detail: '失敗しても即修正し、次に活かす。',
    ),
    const BehaviorTendencyDto(
      summary: '周囲が議論中でも先に動く',
      detail: '実例を持ち帰って判断材料にするタイプ。',
    ),
    const BehaviorTendencyDto(
      summary: 'トラブル対応が早い',
      detail: '原因分析→応急処置→次の手、が速い。',
    ),
    const BehaviorTendencyDto(
      summary: '現場で信頼される存在',
      detail: '「この人が行けば何とかなる」と評価される。',
    ),
  ],
  godsMessage: '動かぬ者に、道は見えません。\n\n'
      '動きながら考える者だけが、\n'
      '高みに辿り着きます。\n\n'
      'あなたは、現実を登る者です。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npor,
      typeName: 'コンサルハクトウワシ',
      typeImageUrl:
          Assets.images.weatherPersonality.nporConsultBaldEagleImage.path,
      compatibilityPoint: '統率と実行が噛み合い、戦略と現場がうまく連動する。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfoe,
      typeName: 'バイブス上がりオウム',
      typeImageUrl:
          Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
      compatibilityPoint: '行動派同士でテンポが合い、前進スピードが速い。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spie,
      typeName: 'センチメンタリス',
      typeImageUrl:
          Assets.images.weatherPersonality.spieSentimentalSquirrelImage.path,
      compatibilityPoint: '内省重視の姿勢に、時間がかかると感じやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfoe,
      typeName: '大道芸レッサーパンダ',
      typeImageUrl: Assets
          .images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
      compatibilityPoint: '感情優先の判断が非効率に見えることがある。',
    ),
  ],
);

final nfoeVibesRisingParrot = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.nfoe,
  typeName: 'バイブス上がりオウム',
  typeCatchphrase: 'ノってる空気？今つくるけど。',
  typeImageUrl:
      Assets.images.weatherPersonality.nfoeVibesRisingParrotImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '空気が微妙に重くなった瞬間、自然に話題を変えていた姿を見ていました。\n\n'
      '雨が降ろうが、\n'
      '予定が変わろうが、\n'
      'あなたはそれを「ネタ」にします。\n\n'
      '落ち込まない。\n'
      'でも、放ってもおかない。\n\n'
      '深く抱え込むわけではないのに、\n'
      '気づけば場は回復している。\n\n'
      '神様は首をかしげ、こう言いました。\n'
      '「この者は感情に溺れぬ。だが、感情を操っている」\n\n'
      'よってあなたは、\n'
      'バイブス上がりオウムとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '自分の気分は安定。他人の感情は観察対象として捉える。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: 'その場の流れに即フィット。台本なしでも場を回せる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.outdoor,
      description: '人がいる場所で本領発揮。外に出るほど調子が上がる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '目的より「場の雰囲気」。自分が楽しむより場が回ることが成果。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気が変わるとテンションも話題も切り替える',
      detail: '「この雨、逆にエモくない？」が口癖。',
    ),
    const BehaviorTendencyDto(
      summary: '沈黙を恐れないが、放置もしない',
      detail: '2秒で雑談を投下できる。',
    ),
    const BehaviorTendencyDto(
      summary: '対立が起きると緩衝材になる',
      detail: '冗談や共通点、軽い共感で場を整える。',
    ),
    const BehaviorTendencyDto(
      summary: '場の潤滑油になる',
      detail: '飲み会・会議・雑談でいないと空気が固まる存在。',
    ),
    const BehaviorTendencyDto(
      summary: '周囲からの安心感が高い',
      detail: '「この人がいると場が回る」と言われる。',
    ),
  ],
  godsMessage: '世界は、正しさだけでは動きません。\n\n'
      '空気がなければ、人は続かない。\n\n'
      'あなたは、人と人の“間”を生かす者です。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npoe,
      typeName: '水族館のイルカ',
      typeImageUrl:
          Assets.images.weatherPersonality.npoeDolphinsInTheAquariumImage.path,
      compatibilityPoint: '計画と社交性が合わさり、人脈が自然と広がる。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfor,
      typeName: '崖の上のヤギ',
      typeImageUrl:
          Assets.images.weatherPersonality.nforGoatOnTheCliffImage.path,
      compatibilityPoint: '行動力と調整力で、現場がスムーズに回る。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfir,
      typeName: 'ミニマリストヤドカリ',
      typeImageUrl:
          Assets.images.weatherPersonality.sfirMinimalistHermitCrabImage.path,
      compatibilityPoint: '静かな実務ペースを乱してしまいがち。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spir,
      typeName: '現場職ビーバー',
      typeImageUrl:
          Assets.images.weatherPersonality.spirFieldWorkerBeaverImage.path,
      compatibilityPoint: '慎重さがブレーキに感じられやすい。',
    ),
  ],
);

final nfieSoftOctopus = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.nfie,
  typeName: 'やわらかタコ',
  typeCatchphrase: '考えてないようで、全部つながってる。',
  typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '誰にも見せないノートやデータの中で、世界を組み替えていた姿を見ていました。\n\n'
      '外が晴れていようと、\n'
      '雨が降っていようと、\n'
      'あなたの意識はずっと内側にあります。\n\n'
      '感情に振り回されない。\n'
      'でも、感情がないわけでもない。\n\n'
      'ただ、それを声に出すより、\n'
      '形にする方が得意だっただけ。\n\n'
      '神様は静かに頷き、こう言いました。\n'
      '「この者は騒がぬ。\n'
      'だが、世界を柔らかく変えている」\n\n'
      'よってあなたは、\n'
      'やわらかタコとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '感情はあるが外部刺激に揺らされにくい。心は安定し、集中は深く続く。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: '計画に縛られない柔軟思考。思いつきが自然と形になっていく。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '一人の時間が創造の源。内側の世界が豊かで、そこから表現が生まれる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.emotional,
      description: '正解よりもしっくりくる感覚を重視。感覚的な完成度を大切にする。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気をほぼ認識していない',
      detail: '没頭していると、気づいたら夜になっていることも多い。',
    ),
    const BehaviorTendencyDto(
      summary: '複数のアイデアが同時進行',
      detail: '頭の中で組み替えながら、完成直前まで表に出さない。',
    ),
    const BehaviorTendencyDto(
      summary: '言語化は控えめ、表現は大胆',
      detail: '作品やアウトプットそのもので語るタイプ。',
    ),
    const BehaviorTendencyDto(
      summary: '締切直前に一気に形にする',
      detail: '内部ではずっと熟成が進んでいる。',
    ),
    const BehaviorTendencyDto(
      summary: '唯一無二と言われがち',
      detail: '「何考えてるかわからないけど、すごい」と評価されることが多い。',
    ),
  ],
  godsMessage: '世界は、固いだけでは壊れます。\n\n'
      '柔らかい発想が、未来を通します。\n\n'
      'あなたは、形を変えながら進む者です。\n'
      'その柔軟さこそが、あなたの強さです。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npie,
      typeName: 'メンターフクロウ',
      typeImageUrl: Assets.images.weatherPersonality.npieMentorOwlImage.path,
      compatibilityPoint: '静かな創造と分析が共存できる。思考の深さを共有できる関係。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfir,
      typeName: 'フリーランスモグラ',
      typeImageUrl:
          Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
      compatibilityPoint: '柔軟な発想と実務力が噛み合い、安定した協力関係を築ける。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spor,
      typeName: '完璧主義ライオン',
      typeImageUrl:
          Assets.images.weatherPersonality.sporPerfectionistLionImage.path,
      compatibilityPoint: '目的志向が強く、自由な思考が制限されやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfor,
      typeName: '庭先のカラス',
      typeImageUrl:
          Assets.images.weatherPersonality.sforCrowsInTheGardenImage.path,
      compatibilityPoint: '即断即決のスピード感に、思考が追いつかず疲れやすい。',
    ),
  ],
);

final nfirFreelanceMole = WeatherPersonalityCharacterDetailDto(
  typeCode: WeatherPersonalityCode.nfir,
  typeName: 'フリーランスモグラ',
  typeCatchphrase: '頼まれてないけど、もう直してある。',
  typeImageUrl: Assets.images.weatherPersonality.nfirFreelanceMoleImage.path,
  rulingStatement: '神様は、前世のあなたが\n'
      '誰にも見られない場所で、問題の根を掘り当てていた姿を見ていました。\n\n'
      '雨が降っても、\n'
      '空気が荒れても、\n'
      'あなたの集中は途切れません。\n\n'
      '騒がない。\n'
      '誇らない。\n\n'
      'ただ、「ここが詰まりそうだな」と思った瞬間、\n'
      '静かに手を入れる。\n\n'
      '問題が起きる前に、\n'
      'すでに通り道は整えられていました。\n\n'
      '神様は小さく笑い、こう言います。\n'
      '「この者は目立たぬ。\n'
      'だが、詰まりを許さぬ」\n\n'
      'よってあなたは、\n'
      'フリーランスモグラとして生まれ変わることになりました。',
  axisFeatures: [
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.sensitivity,
      polarity: WeatherPersonalityPolarity.neutral,
      description: '感情や外乱に影響されにくい。状況を冷静に観測し、安定して対処できる。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.preparedness,
      polarity: WeatherPersonalityPolarity.flexible,
      description: '型に縛られず最短ルートを選ぶ。必要なら即座にやり方を切り替える柔軟性。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.activity,
      polarity: WeatherPersonalityPolarity.indoor,
      description: '裏側や内部構造が主戦場。一人での集中作業で最大の力を発揮する。',
    ),
    const AxisFeatureDto(
      axis: WeatherPersonalityAxis.motivation,
      polarity: WeatherPersonalityPolarity.rational,
      description: '成果基準は「ちゃんと動くかどうか」。理屈よりも実効性を重視する。',
    ),
  ],
  behaviorTendencies: [
    const BehaviorTendencyDto(
      summary: '天気に気づかないレベルで安定',
      detail: '晴れでも嵐でも作業品質は一定。外部要因に左右されない。',
    ),
    const BehaviorTendencyDto(
      summary: '問題発生時は即・対処モード',
      detail: '設計議論よりも「今どう止めるか」を優先する非常時の切り札。',
    ),
    const BehaviorTendencyDto(
      summary: '頼まれる前に直している',
      detail: 'そして大抵、報告しないまま次の穴を掘っている。',
    ),
    const BehaviorTendencyDto(
      summary: '緊急時に評価が跳ね上がる',
      detail: '「あの人がいなかったら終わってた」と後から気づかれる。',
    ),
    const BehaviorTendencyDto(
      summary: '最後に頼られる存在',
      detail: '地味だが最強。詰まりを止める安心感がある。',
    ),
  ],
  godsMessage: '世界は、目立つ者だけで回っているのではありません。\n\n'
      '見えないところで掘る者が、\n'
      '崩壊を止めています。\n\n'
      'あなたは、静かな解決そのものです。\n'
      'その実直さは、確かな強さです。',
  compatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.npir,
      typeName: 'はたらきデバネズミ',
      typeImageUrl:
          Assets.images.weatherPersonality.npirWorkingMoleRatImage.path,
      compatibilityPoint: '淡々と成果を積み上げられる。安定感のある実務コンビ。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.nfie,
      typeName: 'やわらかタコ',
      typeImageUrl: Assets.images.weatherPersonality.nfieSoftOctopusImage.path,
      compatibilityPoint: '静かな環境で互いを尊重できる。創造と実装の相性が良い。',
    ),
  ],
  incompatibleTypes: [
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.spoe,
      typeName: 'トレーニーラッコ',
      typeImageUrl:
          Assets.images.weatherPersonality.spoeTraineeSeaOtterImage.path,
      compatibilityPoint: '感情の揺れへの対応が負担になりやすい。',
    ),
    TypeCompatibilityDto(
      typeCode: WeatherPersonalityCode.sfoe,
      typeName: '大道芸レッサーパンダ',
      typeImageUrl: Assets
          .images.weatherPersonality.sfoeStreetPerformingRedPandaImage.path,
      compatibilityPoint: '行動理由が感情寄りで、合理思考と噛み合いにくい。',
    ),
  ],
);
