package com.reimi.reimi_app.domain.model.weatherpersonality.type;

import java.util.List;

public class WeatherPersonalityType {

    private final WeatherPersonalityCode code;
    private final String name;
    private final String catchphrase;
    private final String imagePath;
    private final String rulingStatement;
    private final List<AxisFeature> axisFeatures;
    private final List<BehaviorTendency> behaviorTendencies;
    private final List<Compatibility> goodCompatibilities;
    private final List<Compatibility> cautionCompatibilities;
    private final String godsMessage;

    private WeatherPersonalityType (
        WeatherPersonalityCode code,
        String name,
        String catchphrase,
        String imagePath,
        String rulingStatement,
        List<AxisFeature> axisFeatures,
        List<BehaviorTendency> behaviorTendencies,
        List<Compatibility> goodCompatibilities,
        List<Compatibility> cautionCompatibilities,
        String godsMessage
    ) {
        this.code = code;
        this.name = name;
        this.catchphrase = catchphrase;
        this.imagePath = imagePath;
        this.rulingStatement = rulingStatement;
        this.axisFeatures = axisFeatures;
        this.behaviorTendencies = behaviorTendencies;
        this.goodCompatibilities = goodCompatibilities;
        this.cautionCompatibilities = cautionCompatibilities;
        this.godsMessage = godsMessage;
    }

    // 16タイプ
    // トレーニーラッコ
    public static final WeatherPersonalityType SPOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPOE,
            "トレーニーラッコ",
            "「感情で揺れ、計画で浮かぶ。日々バランス感覚を鍛えている存在。」",
            "/images/weather-personalities/トレーニーラッコ_イメージ画像.png",
            """
            神様は、前世のあなたが
            空模様を確認してから一日を始める姿を、何度も見ていました。
            雨が降りそうな日は少し不安そうに、
            晴れの日には理由もなく機嫌がよくなる。
            けれどあなたは、ただ振り回される存在ではありませんでした。
            落ち込むことを知っていたから、
            前もって心の準備をし、
            楽しめる未来をちゃんと確保していたのです。
            よって、あなたは
            トレーニーラッコ**として生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "天気・空気・人の機嫌を即座に察知。\nちょっとした曇り空でも「今日はそういう日かも」と感じ取る。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "感情が揺れることを前提に、\n「落ちた時用の逃げ道」*をあらかじめ用意する賢さ。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "家にこもると余計に気分が沈むタイプ。\n気分が良い日は、理由なく外に出たくなる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "効率よりも「気持ちよくできたか」を重視。\n心が納得しないと、どんな正解でも選ばない。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気予報を見てから予定を組み直す",
                    "「雨か…じゃあカフェ多めの日にしよう」と柔軟に修正。"
                ),
                new BehaviorTendency(
                    "落ち込む未来を想定して先回りする",
                    "元気なうちに好きな音楽や予定をストックしておく。"
                ),
                new BehaviorTendency(
                    "周囲の空気が悪いと、無意識に整えにいく",
                    "雑談を振ったり、ちょっとした冗談を入れたり。"
                ),
                new BehaviorTendency(
                    "気分が乗ると一気に行動量が跳ね上がる",
                    "晴れの日は「今日いける気がする」で全部片付ける。"
                ),
                new BehaviorTendency(
                    "自分より他人の感情に敏感",
                    "「あ、この人今日ちょっと沈んでるな」にすぐ気づく。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPOR,
                    "感受性と行動リズムが近く、目的思考があなたの迷いを前向きに導いてくれる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOE,
                    "感情の波を共有でき、計画性の違いが良い刺激になる。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFIR,
                    "感情への関心が薄く、あなたの揺れが理解されにくい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOR,
                    "効率優先の行動が、あなたには急かされているように感じやすい。"
                )
            ),
            """
            あなたは、感情を弱点にせず、
            扱い方を知っていた珍しい存在です。
            揺れるのは悪いことではありません。
            揺れながらも浮いていられるなら、それは才能です。
            """
        );

    // 完璧主義ライオン
    public static final WeatherPersonalityType SPOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPOR,
            "完璧主義ライオン",
            "「感情を感じきったうえで、最短距離を選ぶ王。」",
            "/images/weather-personalities/完璧主義ライオン_イメージ画像.png",
            """
            神様は、前世のあなたが
            空の違和感に誰よりも早く気づいていたことを覚えています。
            雲の厚み、風の湿り気、
            そのすべてを「気分」ではなく
            行動判断の材料として扱っていました。
            不安を感じなかったわけではありません。
            むしろ、人一倍感じていたでしょう。
            しかしあなたは、
            その感情を放置せず、
            計画へ、準備へ、最適解へと変換しました。
            周囲が迷っている間に、
            あなたはもう次の一手を打っていた。
            神様はその姿を見て、こう裁定しました。
            「この者は、感情を支配しているのではない。感情を使いこなしている」
            よってあなたは、
            完璧主義ライオンとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "微妙な違和感・失敗の兆しを早期察知。\n「なんか嫌な予感」がだいたい当たる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "最悪を想定し、\n起こらないようにするのではなく\n起きても勝てる状態を作る。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "現場に出て指揮を執るタイプ。\n自分が前に立つことで全体が安定する。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "情緒は理解するが、最終判断は常に合理。\n「気持ちはわかる。でも今回はこれが最善だ」"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天候・体調・空気感を加味して予定を再設計",
                    "雨なら移動ルートを変更、暑そうなら先に重要タスクを終わらせる。"
                ),
                new BehaviorTendency(
                    "トラブルが起きる前に手を打つ",
                    "「まだ大丈夫だけど、今のうちに対処しとくか」"
                ),
                new BehaviorTendency(
                    "感情的な場面でも判断がブレにくい",
                    "内心はザワついているが、表には出さず、必要な指示だけを出す。"
                ),
                new BehaviorTendency(
                    "任されると一気にギアが上がる",
                    "「自分がやるなら、最適解で行く」"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「ついていけば大丈夫」\n「厳しいけど、結果は出す人」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPOE,
                    "感情への理解があり、あなたの推進力を柔らかく支えてくれる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOR,
                    "現場対応力が高く、計画と即断の役割分担が明確。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFIE,
                    "創作優先のペースが、あなたの目的志向と噛み合いにくい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOE,
                    "感情主導の社交性が、合理性を乱される感覚につながる。"
                )
            ),
            """
            あなたは、
            感情に気づける強さと、
            決断を下せる覚悟を両方持っていました。
            完璧を求めるのは、
            守りたい未来があるからです。
            """
        );

    // センチメンタリス
    public static final WeatherPersonalityType SPIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPIE,
            "センチメンタリス",
            "「外は静か、内側は嵐。考え続ける感情の保管庫。」",
            "/images/weather-personalities/センチメンタリス_イメージ画像.png",
            """
            神様は、前世のあなたが
            雨の日に、外へ出なかった理由を知っていました。
            それは怠けでも、逃避でもありません。
            あなたは、
            空模様が心に落とす影を、
            そのまま抱え込んでしまう人だったのです。
            風が強い日は思考が深くなり、
            曇りの日は過去を反芻する。
            それでもあなたは、
            感情に流されきることはありませんでした。
            感じたものを言葉に変え、
            整理し、理解し、
            いつか使える形に静かに保存していたのです。
            神様は、その姿を見てこう言いました。
            「この者は、世界をすぐに動かさない。
            だが、世界を深く理解している」
            よってあなたは、
            センチメンタリスとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "天気・言葉・沈黙にまで反応する。\n他人が気づかない微細な違和感を拾う。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "感情をその場で処理せず、\nあとで向き合うための余白を確保する。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "外界の刺激が多いと消耗しやすい。\n一人の時間が思考の燃料になる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "正しさよりも「腑に落ちるか」を重視する。\n感情が納得しないと前に進めない。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気が悪いと予定を静かなものに切り替える",
                    "外出を減らし、考え事や記録の時間を増やす。"
                ),
                new BehaviorTendency(
                    "感情を即座に言語化しない",
                    "まず心の中で熟成させ、\n後日ふとした一言で核心を突く。"
                ),
                new BehaviorTendency(
                    "人の相談を受けると本領発揮",
                    "表面的な話ではなく、\n「その人が言えなかった感情」を拾う。"
                ),
                new BehaviorTendency(
                    "過去の出来事を何度も反芻する",
                    "ただしそれは後悔ではなく、\n意味を見つけるための思考。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「静かだけど、話すと深い」\n「あの人に話すと整理される」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPIR,
                    "感受性を理解した上で、現実的に支えてくれる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFIE,
                    "感情の深さを共有でき、安心して内面を開ける。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFOR,
                    "外向的で合理的な行動に、心が置き去りになりやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFIR,
                    "感情に踏み込まれず、距離を感じやすい。"
                )
            ),
            """
            あなたは、
            感情をすぐに手放さなかったからこそ、
            他人の痛みを理解できました。
            世界を支える役割は、
            いつも前に出る者だけのものではありません。
            """
        );

    // 現場職ビーバー
    public static final WeatherPersonalityType SPIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPIR,
            "現場職ビーバー",
            "「派手さはない。だが一番、壊れにくい。」",
            "/images/weather-personalities/現場職ビーバー_イメージ画像.png",
            """
            神様は、前世のあなたが
            雨の日に、作業の精度が上がっていたことを知っていました。
            外が静まり、世界が少しだけ鈍くなるとき、
            あなたの思考は最も澄んでいたのです。
            強い日差しや喧騒の中ではなく、
            曇天や雨音の下で、
            あなたは黙々と手を動かしていました。
            失敗を恐れていたのではありません。
            ただ、
            一度作るものは、長く使える形にしたかった。
            誰かが前に出ている間、
            あなたは後ろで基礎を固め続けた。
            神様はその姿を見て、こう裁定しました。
            「この者は、目立たぬ場所で世界を止めなかった。
            むしろ、崩れないように支えていた」
            よってあなたは、
            現場職ビーバーとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "小さな異変や不具合を見逃さない。\n「まだ大丈夫」に一番早く違和感を覚える。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "行き当たりばったりを嫌い、\n手順・段取り・安全策を丁寧に積み上げる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "一人で集中できる環境が最適。\n静かな場所ほどパフォーマンスが上がる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "感情は感じるが、判断は常に現実的。\n「使えるか」「続くか」を最優先。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "雨音・気温・湿度など、環境の変化を敏感に感じ取り、最も集中できる条件を自分で作る",
                    "カフェや室内で一気に作業を片付けるタイプ。"
                ),
                new BehaviorTendency(
                    "見えないリスクを先に潰す",
                    "トラブルが起きる前に、\n仕様・道具・手順を見直す。"
                ),
                new BehaviorTendency(
                    "自分の仕事を誇張しない",
                    "成果を語らず、\n「問題なかったこと」を淡々と報告。"
                ),
                new BehaviorTendency(
                    "頼まれると断らないが、無理はしない",
                    "できる範囲を正確に見極める。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「この人が関わってると安心」\n「最後に残るのは、この人の仕事」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPIE,
                    "内面の繊細さを理解し合い、安定した関係を築ける。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFIR,
                    "静かな実務力同士で、無言でも信頼が成り立つ。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFOE,
                    "感情表現の方向性が違い、疲れやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOR,
                    "スピード感が合わず、慎重さが評価されにくい。"
                )
            ),
            """
            あなたは、
            世界が派手に進むことよりも、
            世界が止まらないことを選びました。
            その静かな選択が、
            多くの未来を支えています。
            """
        );

    // 大道芸レッサーパンダ
    public static final WeatherPersonalityType SFOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFOE,
            "大道芸レッサーパンダ",
            "「天気次第で人生が変わる。でも、だいたい楽しい。」",
            "/images/weather-personalities/大道芸レッサーパンダ_イメージ画像.png",
            """
            神様は、前世のあなたが
            天気と一緒にテンションが上下していたことを、
            隠すことなく見ていました。
            晴れた日は世界の中心。
            雨の日は少しだけ影が薄くなる。
            けれどあなたは、
            その揺れを直そうとはしませんでした。
            その日の空、その日の気分、
            その瞬間のひらめきに身を任せ、
            人前に立ち続けていたのです。
            失敗も多かったでしょう。
            予定が崩れた日も、落ち込んだ夜もあったはずです。
            それでもあなたが現れると、
            場の空気が少し軽くなる。
            神様はそれを見て、こう裁定しました。
            「この者は、安定しない。
            だが、世界を楽しく歪ませる才能がある」
            よってあなたは、
            大道芸レッサーパンダとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "天気・音・人の視線に即反応。\n良くも悪くも、影響をそのまま受け取る。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "計画よりノリ。\n思いついた瞬間が、いちばん行動に向いている。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "人がいる場所、にぎやかな場で力を発揮。\n一人きりはエネルギー切れを起こしやすい。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "理屈より「今楽しいか」。\n感情が動かないことが、最大のストレス。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "晴れの日は即アクティブ",
                    "「今日いける！」で予定を詰め込みすぎる。"
                ),
                new BehaviorTendency(
                    "天気が悪いと行動が急ブレーキ",
                    "外出をやめて、気分が戻るのを待つ。"
                ),
                new BehaviorTendency(
                    "場の空気を変える一言を投げがち",
                    "真面目な場でも、つい冗談や軽いノリを差し込む。"
                ),
                new BehaviorTendency(
                    "気分が乗っている時の爆発力がすごい",
                    "人を巻き込み、その場の主役になる。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「一緒にいると楽しい」\n「予測不能だけど憎めない」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPOE,
                    "感情の波を受け止めてもらえ、安心して動ける。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOR,
                    "柔軟さは同じで、実用視点がブレーキ役になる。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFIR,
                    "感情重視の行動が、理解されにくい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOR,
                    "効率優先の判断に、自由さを奪われたように感じる。"
                )
            ),
            """
            あなたは、
            安定を選ばなかったからこそ、
            世界に“余白”を作りました。
            楽しさは、
            いつも予定外の場所から生まれます。
            """
        );

    // 庭先のカラス
    public static final WeatherPersonalityType SFOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFOR,
            "庭先のカラス",
            "「考える前に動き、動きながら正解に近づく。」",
            "/images/weather-personalities/庭先のカラス_イメージ画像.png",
            """
            神様は、前世のあなたが
            天気が変わった瞬間に、もう動いていたことを覚えています。
            雨が降り出す前に場所を変え、
            風向きが変われば立ち位置を変える。
            あなたは、
            空模様を「感情」ではなく
            情報として扱っていました。
            不安も焦りも感じていたでしょう。
            けれどそれを抱え込むより早く、
            身体が先に反応していたのです。
            周囲が状況を整理している間に、
            あなたはもう次の手を打っていた。
            神様はその様子を見て、こう裁定しました。
            「この者は、完璧を待たない。だが、機会を逃さない」
            よってあなたは、
            庭先のカラスとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "空気・変化・異変を瞬時に察知。\n「何かおかしい」に一番早く気づく。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "計画よりも現場判断。\n予定は変えるためにあるもの。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "動きながら考えるタイプ。\n静止すると判断が鈍る。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "目的達成が最優先。\n感情は処理するもの、引きずるものではない。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気が怪しいと即ルート変更",
                    "「この道やめとこ」で被害を回避。"
                ),
                new BehaviorTendency(
                    "トラブル時に自然と前に出る",
                    "誰かが指示する前に、もう役割分担を始めている。"
                ),
                new BehaviorTendency(
                    "情報が揃う前に暫定解で動く",
                    "完璧でなくても、動かないよりマシと知っている。"
                ),
                new BehaviorTendency(
                    "空気が悪い場から素早く抜ける",
                    "無駄な消耗を避ける判断が速い。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「判断が早くて助かる」\n「気づいたら仕切ってる人」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPOR,
                    "判断の速さと計画性が噛み合い、行動が加速する。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOE,
                    "感受性が近く、場の空気を読みながら動ける。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFIE,
                    "内向的な創作ペースに、歯がゆさを感じやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOE,
                    "感情判断の軸が異なり、意思決定がぶれやすい。"
                )
            ),
            """
            あなたは、
            迷っている時間そのものを
            最大のリスクだと理解していました。
            世界は、
            即応できる者によって救われる場面もあります。
            """
        );

    // 実家のネコ
    public static final WeatherPersonalityType SFIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFIE,
            "実家のネコ",
            "「今日は何もしない。それが、いちばんの回復。」",
            "/images/weather-personalities/実家のネコ_イメージ画像.png",
            """
            神様は、前世のあなたが
            天気の悪い日に、無理をしなかったことを覚えています。
            雨が降れば、今日は静かに過ごす日。
            晴れたら、少しだけ気分が前を向く。
            あなたは、
            自分の心の天気を否定しませんでした。
            頑張れない日は、頑張らない。
            落ち込んだ日は、誰かのそばで丸くなる。
            それでも、不思議と
            人はあなたの近くで呼吸が楽になった。
            神様はその様子を見て、こう裁定しました。
            「この者は、前に進ませない。
            だが、人を壊さない」
            よってあなたは、
            実家のネコとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "天気・声色・沈黙に敏感。\n他人の疲れや悲しみを察知する。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "無理に立てた予定より、\n今の気分を尊重する。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "家や安心できる場所が活動拠点。\n外に出るのは、気分が整ってから。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "正しさより、やさしさ。\n「大丈夫？」の一言を自然に差し出す。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気が悪い日は、回復を最優先",
                    "外出を控え、心と体を休ませる。"
                ),
                new BehaviorTendency(
                    "人の話を評価せずに聞く",
                    "アドバイスより、「うんうん」を選ぶ。"
                ),
                new BehaviorTendency(
                    "場の緊張を、存在だけで和らげる",
                    "何も言わなくても、そこにいるだけで安心感が生まれる。"
                ),
                new BehaviorTendency(
                    "自分の感情に正直",
                    "疲れたら離れ、元気なときだけ寄っていく。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「そばにいると落ち着く」\n「話さなくても安心できる」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPIE,
                    "感情の深さを尊重し合える、静かな安心関係。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFIR,
                    "互いに干渉しすぎず、心地よい距離を保てる。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFOR,
                    "行動量と外向性の差がストレスになりやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFIR,
                    "実務優先の姿勢に、感情が置き去りになりがち。"
                )
            ),
            """
            あなたは、
            無理をしなかったからこそ、
            人の心を壊さずに済みました。
            休むことも、
            世界を守る行為のひとつです。
            """
        );

    // ミニマリストヤドカリ
    public static final WeatherPersonalityType SFIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFIR,
            "ミニマリストヤドカリ",
            "「持たない。振り回されない。ちゃんと終わらせる。」",
            "/images/weather-personalities/ミニマリストヤドカリ_イメージ画像.png",
            """
            神様は、前世のあなたが
            天気の話題にほとんど乗らなかったことを覚えています。
            雨が降っても、
            「あ、そうなんだ」と言って
            いつも通りの作業に戻る。
            あなたは、
            空模様に心を奪われない代わりに、
            余計なものを一つずつ削っていました。
            気分が乱れそうになれば、
            環境を変え、持ち物を減らし、
            自分を守る殻を選び直す。
            派手な動きはありませんでした。
            けれど、
            途中で投げ出した仕事は一つもなかった。
            神様はその姿を見て、こう裁定しました。
            「この者は、感情を否定しない。
            ただ、最小限で扱っている」
            よってあなたは、
            ミニマリストヤドカリとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.SENSITIVE,
                    "実は刺激に弱い。\nだからこそ、情報・人・物を厳選する。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "きっちり決めすぎない。\n変えられる余白を常に残す。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "自分のペースを守れる環境が最重要。\n静かな場所で真価を発揮。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "「役に立つか」「続けられるか」が判断基準。\n感情は行動の邪魔にならない範囲で扱う。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気に左右されず、淡々とタスク処理",
                    "雨でも晴れでも、やることは変えない。"
                ),
                new BehaviorTendency(
                    "環境を軽くすることで集中力を保つ",
                    "物を減らし、人付き合いも選別する。"
                ),
                new BehaviorTendency(
                    "急な変更にも静かに対応",
                    "文句を言わず、さらっと切り替える。"
                ),
                new BehaviorTendency(
                    "表に出ないが、実は要",
                    "気づくと、一番大事なところを任されている。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「静かだけど頼れる」\n「抜けると困る人」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPIR,
                    "堅実さと感受性のバランスが取れる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFIE,
                    "静かな環境で、互いのペースを尊重できる。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NFOE,
                    "社交的すぎる環境に、消耗しやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFIE,
                    "感情表現の方向性が合わない。"
                )
            ),
            """
            あなたは、
            すべてを感じてしまうからこそ、
            必要なものだけを残しました。
            軽さは、
            生き残るための知恵です。
            """
        );

    // 水族館のイルカ
    public static final WeatherPersonalityType NPOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPOE,
            "水族館のイルカ",
            "「気分じゃない。でも、魅せると決めた。」",
            "/images/weather-personalities/水族館のイルカ_イメージ画像.png",
            """
            神様は、前世のあなたが
            天気を理由に予定を変えなかったことを覚えています。
            雨でも、曇りでも、
            あなたは同じ時間に現れ、
            同じ役割をこなしていました。
            感情がなかったわけではありません。
            ただあなたは、
            それを表に出すタイミングと場所を
            正確に選んでいたのです。
            見せるべき場面では、
            笑顔も盛り上がりも、
            計画通りに演出する。
            神様はその姿を見て、こう裁定しました。
            「この者は、気分で動かない。だが、人の気分を動かす」
            よってあなたは、
            水族館のイルカとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "天候や環境変化に左右されにくい。\n感情は安定しており、波が小さい。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "目的から逆算し、\n感情表現すら設計する。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "人前・舞台・注目される場で本領発揮。\n見られるほど、完成度が上がる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "情緒を軽視しない。\nただし“自分のため”より“場のため”。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "盛り上げ役を自然に引き受ける",
                    "空気を読み、必要なテンションを出す。"
                ),
                new BehaviorTendency(
                    "感情表現が安定している",
                    "昨日と今日で態度が変わらない。"
                ),
                new BehaviorTendency(
                    "人からの見られ方を理解している",
                    "言動が“場に最適化”されている。"
                ),
                new BehaviorTendency(
                    "長期視点の関係設計",
                    "その場の盛り上がりより、**次も一緒に動ける関係を作ることを重視する。**"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「安心して任せられる」\n「一緒にいると場が締まる」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPOR,
                    "計画性と外向性が一致し、強い推進力を生む。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOE,
                    "柔軟な社交性が、あなたの戦略を広げてくれる。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SFIR,
                    "感受性の高さに、対応コストを感じやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOR,
                    "直感的判断が多く、戦略性が噛み合いにくい。"
                )
            ),
            """
            あなたは、
            自分の感情よりも、
            場の感情を優先できました。
            それは、
            多くの人を導く資質です。
            """
        );

    // コンサルハクトウワシ
    public static final WeatherPersonalityType NPOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPOR,
            "コンサルハクトウワシ",
            "「感情を排し、最短で勝ちに行く。」",
            "/images/weather-personalities/コンサルハクトウワシ_イメージ画像.png",
            """
            神様は、前世のあなたが
            空をほとんど見上げなかったことを覚えています。
            雨か晴れかは確認しない。
            必要なのは、目的と手段だけ。
            あなたにとって天候は、
            考慮に値しないノイズでした。
            迷いがなかったわけではありません。
            ただあなたは、
            迷いが生じる前に
            判断基準を決めきっていたのです。
            一度決めた方針は曲げない。
            状況が変わっても、
            原則は変えない。
            神様はその姿を見て、こう裁定しました。
            「この者は、世界を感じない。
            だが、世界を動かす」
            よってあなたは、
            コンサルハクトウワシとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "気分・天候・雰囲気に左右されない。\n判断は常に一定。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "原則・ルール・戦略を先に固める。\n例外は、例外として処理。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "高所から全体を見渡す指揮官タイプ。\n現場に立つことで統率が効く。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "感情より成果。\n結果が出るかどうかがすべて。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気に関係なく行動が一定",
                    "雨でも晴れでも、\nスケジュールは同じ。"
                ),
                new BehaviorTendency(
                    "判断基準が明文化されている",
                    "好き嫌いではなく、\n原則で決める。"
                ),
                new BehaviorTendency(
                    "迷っている人に結論を与える",
                    "「今決めるべきはこれ」\nと道筋を示す。"
                ),
                new BehaviorTendency(
                    "感情論を長引かせない",
                    "共感はするが、\n決断は早い。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「ブレない」\n「厳しいけど合理的」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPOE,
                    "外向的リーダー同士で、役割分担が明確。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOR,
                    "現場対応力が、あなたの計画を実行に移す。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SFIE,
                    "感情優先の姿勢が、非合理に見えやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOE,
                    "判断基準の違いから、衝突しやすい。"
                )
            ),
            """
            あなたは、
            感じることよりも、
            決め続けることを選びました。
            混乱の中では、
            その一貫性が秩序になります。
            """
        );

    // メンターフクロウ
    public static final WeatherPersonalityType NPIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPIE,
            "メンターフクロウ",
            "「語らずとも、答えはもう見えている。」",
            "/images/weather-personalities/メンターフクロウ_イメージ画像.png",
            """
            神様は、前世のあなたが
            天気を気にせず、夜を選んで考えていたことを覚えています。
            雨でも晴れでも、
            あなたの思考は一定の深さを保っていました。
            外が騒がしいほど、
            内側は静かになる。
            あなたは、
            感情を表に出すよりも、
            それを理解することに時間を使っていたのです。
            すぐに結論を言わない。
            だが、聞かれたときには
            必要な答えだけを差し出す。
            神様はその姿を見て、こう裁定しました。
            「この者は、場を導かない。
            だが、判断を深くする」
            よってあなたは、
            メンターフクロウとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "気分や天候に流されにくい。\n感情の波は小さく、安定している。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "情報を整理し、構造化するのが得意。\n思考には順序がある。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "静かな環境で集中力が最大化。\n一人の時間が不可欠。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "数字だけでなく、人の気持ちも考慮。\nただし表現は控えめ。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気に関係なく、淡々と学び続ける",
                    "読書、調査、分析が日常。"
                ),
                new BehaviorTendency(
                    "会話では聞き役に回りがち",
                    "話の全体像を把握してから言葉を選ぶ。"
                ),
                new BehaviorTendency(
                    "質問されると核心を突く",
                    "長い説明ではなく、\n一言で本質を示す。"
                ),
                new BehaviorTendency(
                    "感情的な場面でも冷静",
                    "共感はするが、\n飲み込まれない。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「話すと頭が整理される」\n「静かだけど信頼できる」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPIR,
                    "内向的で計画的、静かに成果を出せる関係。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFIE,
                    "創造性と分析力が補完し合う。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SFOR,
                    "即断即決のスピードに疲れやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOE,
                    "感情の起伏が大きく、集中が削がれる。"
                )
            ),
            """
            あなたは、
            声を張らなかったからこそ、
            思考を深く保てました。
            静けさは、
            知恵を育てる場所です。
            """
        );

    // はたらきデバネズミ
    public static final WeatherPersonalityType NPIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPIR,
            "はたらきデバネズミ",
            "「今日も黙って、手順を守る。」",
            "/images/weather-personalities/はたらきデバネズミ_イメージ画像.png",
            """
            神様は、前世のあなたが
            誰も見ていないところで、同じ作業を何度も確認していた姿を見ていました。
            晴れでも雨でも、
            周囲が浮き足立っていても、
            あなたの手は止まりません。
            気分でやらない。
            勢いで決めない。
            「正しいかどうか」
            それだけを基準に、
            あなたは行動していました。
            目立つ成果ではない。
            だが、欠けたら全体が崩れる仕事。
            神様はそれを見て、静かにこう裁定します。
            「この者は前に出ない。
            だが、崩れを許さない」
            よってあなたは、
            はたらきデバネズミとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "感情の影響をほとんど受けない。\n気分より手順を優先。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.PLANNED,
                    "作業前に工程を明確化。\n再現性と安定性を重視。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "一人で黙々と進める環境が最適。\n長時間集中が可能。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "「役に立つか」「正しいか」が行動基準。\n美辞麗句には反応しにくい。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気が悪くても作業効率は変わらない",
                    "むしろ静かで集中しやすい。"
                ),
                new BehaviorTendency(
                    "チェックリストと相性が抜群",
                    "見落としを極端に嫌う。"
                ),
                new BehaviorTendency(
                    "同じ工程を、同じ品質で繰り返すことに安心を覚える",
                    "平常運転の守護者"
                ),
                new BehaviorTendency(
                    "トラブル時に真価を発揮",
                    "淡々と原因を切り分け、修正。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「この人がOKなら大丈夫」\n「最後の砦」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPIE,
                    "精度重視の思考を共有できる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFIR,
                    "静かな実務同士で、安定感が高い。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SFOE,
                    "感情主導の行動が読みにくい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SPOE,
                    "気分変動への対応が負担になりやすい。"
                )
            ),
            """
            派手さは、
            世界を動かします。
            だが、
            精度は世界を保ちます。
            あなたは、
            壊れない未来を作る者です。
            """
        );

    // バイブス上がりオウム
    public static final WeatherPersonalityType NFOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFOE,
            "バイブス上がりオウム",
            "「ノってる空気？今つくるけど。」",
            "/images/weather-personalities/バイブス上がりオウム_イメージ画像.png",
            """
            神様は、前世のあなたが
            空気が微妙に重くなった瞬間、自然に話題を変えていた姿を見ていました。
            雨が降ろうが、
            予定が変わろうが、
            あなたはそれを「ネタ」にします。
            落ち込まない。
            でも、放ってもおかない。
            深く抱え込むわけではないのに、
            気づけば場は回復している。
            神様は首をかしげ、こう言いました。
            「この者は感情に溺れぬ。
            だが、感情を操っている」
            よってあなたは、
            バイブス上がりオウムとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "自分の気分は安定。\n他人の感情は観察対象。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "その場の流れに即フィット。\n台本なしでも回せる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "人がいる場所で本領発揮。\n外に出るほど調子が上がる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "目的より「場の雰囲気」。\n自分が楽しむより、場が回ることが成果。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気が変わるとテンションも話題も切り替える",
                    "「この雨、逆にエモくない？」が口癖。"
                ),
                new BehaviorTendency(
                    "沈黙を恐れないが、放置もしない",
                    "2秒で雑談を投下できる。"
                ),
                new BehaviorTendency(
                    "対立が起きると緩衝材になる",
                    "冗談・共通点・軽い共感で場を整える。"
                ),
                new BehaviorTendency(
                    "飲み会・会議・雑談の潤滑油",
                    "いないと空気が固まる。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「この人がいると場が回る」\n「なんか安心する」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPOE,
                    "計画と社交性が合わさり、人脈が広がる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOR,
                    "行動力と調整力で、現場が回りやすい。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SFIR,
                    "静かな実務ペースを乱してしまいがち。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SPIR,
                    "慎重さがブレーキに感じられる。"
                )
            ),
            """
            世界は、
            正しさだけでは動きません。
            空気がなければ、人は続かない。
            あなたは、
            人と人の“間”を生かす者です。
            """
        );

    // 崖の上のヤギ
    public static final WeatherPersonalityType NFOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFOR,
            "崖の上のヤギ",
            "「行ける？──じゃあ、もう行ってる。」",
            "/images/weather-personalities/崖の上のヤギ_イメージ画像.png",
            """
            神様は、前世のあなたが
            周囲が様子見している間に、すでに一歩踏み出していた姿を見ていました。
            空が曇れば足場を確認し、
            風が強ければ進路を変える。
            天気は感情ではなく、
            情報として扱われていました。
            考えすぎない。
            だが、無謀でもない。
            「今、動けるかどうか」
            その一点だけで判断し、
            あなたは前へ進み続けていました。
            神様はうなずき、こう告げます。
            「この者は迷わぬ。
            だが、足元を見ている」
            よってあなたは、
            崖の上のヤギとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "不安や気分に引きずられない。\n判断基準は常に現実。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "計画よりも現場対応。\nその場で最適解を選ぶ。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.OUTDOOR,
                    "動いてこそ調子が出る。\n机上より現場派。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "成果・前進・実行が最優先。\nできるかどうかで決める。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気予報は「行動可否チェック」",
                    "良し悪しではなく、装備とルートの判断材料。"
                ),
                new BehaviorTendency(
                    "「とりあえずやってみる」が口癖",
                    "失敗しても即修正。"
                ),
                new BehaviorTendency(
                    "周囲が議論中でも先に動く",
                    "実例を持ち帰るタイプ。"
                ),
                new BehaviorTendency(
                    "トラブル対応が早い",
                    "原因分析→応急処置→次の手、が速い。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「現場に強い」\n「この人が行けば何とかなる」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPOR,
                    "統率と実行が噛み合う。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFOE,
                    "行動派同士でテンポが合う。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPIE,
                    "内省重視の姿勢に、時間がかかると感じやすい。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOE,
                    "感情優先の判断が非効率に見える。"
                )
            ),
            """
            動かぬ者に、
            道は見えません。
            動きながら考える者だけが、
            高みに辿り着きます。
            あなたは、
            現実を登る者です。
            """
        );

    // やわらかタコ
    public static final WeatherPersonalityType NFIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFIE,
            "やわらかタコ",
            "「考えてないようで、全部つながってる。」",
            "/images/weather-personalities/やわらかタコ_イメージ画像.png",
            """
            神様は、前世のあなたが
            誰にも見せないノートやデータの中で、世界を組み替えていた姿を見ていました。
            外が晴れていようと、
            雨が降っていようと、
            あなたの意識はずっと内側にあります。
            感情に振り回されない。
            でも、感情がないわけでもない。
            ただ、
            それを声に出すより、
            形にする方が得意だっただけ。
            神様は静かに頷き、こう言いました。
            「この者は騒がぬ。
            だが、世界を柔らかく変えている」
            よってあなたは、
            やわらかタコとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "感情はあるが、外部刺激に揺らされにくい。\n心は安定、集中は深い。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "計画に縛られない発想。\n思いつきがそのまま形になる。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "一人の時間が創造の源。\n内側の世界が豊か。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.EMOTIONAL,
                    "正解より「しっくりくるか」。\n感覚的完成度を重視。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気をほぼ認識していない",
                    "気づいたら夜、ということも多い。"
                ),
                new BehaviorTendency(
                    "頭の中で複数のアイデアが同時進行",
                    "表に出るのは完成直前。"
                ),
                new BehaviorTendency(
                    "言語化は苦手だが、表現は上手",
                    "作品・アウトプットで語る。"
                ),
                new BehaviorTendency(
                    "締切直前に一気に形にする",
                    "内部ではずっと熟成している。"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「何考えてるかわからないけど、すごい」\n「唯一無二」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPIE,
                    "静かな創造と分析が共存できる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFIR,
                    "柔軟性と実務力で、安定した協力関係。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPOR,
                    "目的志向が強く、自由さが削がれる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOR,
                    "即断即決に、思考が追いつかない。"
                )
            ),
            """
            世界は、
            固いだけでは壊れます。
            柔らかい発想が、
            未来を通します。
            あなたは、
            形を変えながら進む者です。
            """
        );

    // フリーランスモグラ
    public static final WeatherPersonalityType NFIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFIR,
            "フリーランスモグラ",
            "「頼まれてないけど、もう直してある。」",
            "/images/weather-personalities/フリーランスモグラ_イメージ画像.png",
            """
            神様は、前世のあなたが
            誰にも見られない場所で、問題の根を掘り当てていた姿を見ていました。
            雨が降っても、
            空気が荒れても、
            あなたの集中は途切れません。
            騒がない。
            誇らない。
            ただ、
            「ここが詰まりそうだな」と思った瞬間、
            静かに手を入れる。
            問題が起きる前に、
            すでに通り道は整えられていました。
            神様は小さく笑い、こう言います。
            「この者は目立たぬ。
            だが、詰まりを許さぬ」
            よってあなたは、
            フリーランスモグラとして生まれ変わることになりました。
            """,
            List.of(
                new AxisFeature(
                    WeatherPersonalityAxis.SENSITIVITY,
                    WeatherPersonalityPolarity.NEUTRAL,
                    "感情や外乱に影響されない。\n状況を冷静に観測。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.PREPAREDNESS,
                    WeatherPersonalityPolarity.FLEXIBLE,
                    "型に縛られず、最短ルートを選択。\n必要なら即座にやり方を変える。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.ACTIVITY,
                    WeatherPersonalityPolarity.INDOOR,
                    "裏側・内部構造が主戦場。\n一人作業で力を発揮。"
                ),
                new AxisFeature(
                    WeatherPersonalityAxis.MOTIVATION,
                    WeatherPersonalityPolarity.RATIONAL,
                    "成果は「動くかどうか」。\n理屈より実効性。"
                )
            ),
            List.of(
                new BehaviorTendency(
                    "天気に気づかないレベルで安定",
                    "晴れでも嵐でも、作業品質は一定。"
                ),
                new BehaviorTendency(
                    "問題が起きた瞬間、設計ではなく“今どう止めるか”を考える",
                    "非常時の切り札。"
                ),
                new BehaviorTendency(
                    "頼まれる前に直していることが多い",
                    "そして報告しない。"
                ),
                new BehaviorTendency(
                    "緊急時に突然評価が跳ね上がる",
                    "「あの人がいなかったら終わってた」"
                ),
                new BehaviorTendency(
                    "周囲からの評価",
                    "「地味だけど最強」\n「最後に頼る人」"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.NPIR,
                    "淡々と成果を積み上げられる。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.NFIE,
                    "静かな環境で、互いを尊重できる。"
                )
            ),
            List.of(
                new Compatibility(
                    WeatherPersonalityCode.SPOE,
                    "感情の揺れに対応しきれない。"
                ),
                new Compatibility(
                    WeatherPersonalityCode.SFOE,
                    "行動理由が感情的すぎて理解しづらい。"
                )
            ),
            """
            世界は、
            目立つ者だけで回っているのではありません。
            見えないところで掘る者が、
            崩壊を止めています。
            あなたは、
            静かな解決そのものです。
            """
        );

    public static WeatherPersonalityType[] values() {
        return new WeatherPersonalityType[] {
            SPOE,
            SPOR,
            SPIE,
            SPIR,
            SFOE,
            SFOR,
            SFIE,
            SFIR,
            NPOE,
            NPOR,
            NPIE,
            NPIR,
            NFOE,
            NFOR,
            NFIE,
            NFIR
        };
    }

    public static WeatherPersonalityType from(WeatherPersonalityCode code) {
        for (WeatherPersonalityType type : values()) {
            if (type.code.equals(code)) {
                return type;
            }
        }
        throw new IllegalArgumentException("存在しないタイプコードです");
    }

    public WeatherPersonalityCode getCode() { return code; }
    public String getName() { return name; }
    public String getCatchphrase() { return catchphrase; }
    public String getImagePath() { return imagePath; }
    public String getRulingStatement() { return rulingStatement; }
    public List<AxisFeature> getAxisFeatures() { return axisFeatures; }
    public List<BehaviorTendency> getBehaviorTendencies() { return behaviorTendencies; }
    public List<Compatibility> getGoodCompatibilities() { return goodCompatibilities; }
    public List<Compatibility> getCautionCompatibilities() { return cautionCompatibilities; }
    public String getGodsMessage() { return godsMessage; }

    //タイプのイメージ画像をURLとして管理したいためシリアライズ対象外とする
    private transient String typeImageUrl;

    public String getTypeImageUrl() { return typeImageUrl; }
    public void setTypeImageUrl(String typeImageUrl) { this.typeImageUrl = typeImageUrl; }
}