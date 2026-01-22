package com.reimi.reimi_app.domain.model.weatherpersonality;

public class WeatherPersonalityType {

    private final WeatherPersonalityCode code;
    private final String name;
    private final String description;
    private final String imagePath;

    private WeatherPersonalityType (
        WeatherPersonalityCode code,
        String name,
        String description,
        String imagePath
    ) {
        this.code = code;
        this.name = name;
        this.description = description;
        this.imagePath = imagePath;
    }

    // 16タイプ
    // トレーニーラッコ
    public static final WeatherPersonalityType SPOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPOE,
            "トレーニーラッコ",
            "「共感的ムードメーカー」そのもの",
            "/images/weather-personalities/トレーニーラッコ_イメージ画像.png"
        );

    // 完璧主義ライオン
    public static final WeatherPersonalityType SPOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPOR,
            "完璧主義ライオン",
            "推進力ある主導者リーダー",
            "/images/weather-personalities/完璧主義ライオン_イメージ画像.png"
        );

    // センチメンタリス
    public static final WeatherPersonalityType SPIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPIE,
            "センチメンタリス",
            "敏感・慎重・巣重視・安心最優先の性格",
            "/images/weather-personalities/センチメンタリス_イメージ画像.png"
        );

    // 現場職ビーバー
    public static final WeatherPersonalityType SPIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SPIR,
            "現場職ビーバー",
            "安定を生む裏方の職人",
            "/images/weather-personalities/現場職ビーバー_イメージ画像.png"
        );

    // 大道芸レッサーパンダ
    public static final WeatherPersonalityType SFOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFOE,
            "大道芸レッサーパンダ",
            "明るく場を和ませるムードメーカー",
            "/images/weather-personalities/大道芸レッサーパンダ_イメージ画像.png"
        );

    // 庭先のカラス
    public static final WeatherPersonalityType SFOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFOR,
            "庭先のカラス",
            "俊敏で賢い現場指揮官",
            "/images/weather-personalities/庭先のカラス_イメージ画像.png"
        );

    // 実家のネコ
    public static final WeatherPersonalityType SFIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFIE,
            "実家のネコ",
            "内向的だけど愛情深い",
            "/images/weather-personalities/実家のネコ_イメージ画像.png"
        );

    // ミニマリストヤドカリ
    public static final WeatherPersonalityType SFIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.SFIR,
            "ミニマリストヤドカリ",
            "敏感・即応・殻生活・超合理主義",
            "/images/weather-personalities/ミニマリストヤドカリ_イメージ画像.png"
        );

    // 水族館のイルカ
    public static final WeatherPersonalityType NPOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPOE,
            "水族館のイルカ",
            "雰囲気を整える調整役",
            "/images/weather-personalities/水族館のイルカ_イメージ画像.png"
        );

    // コンサルハクトウワシ
    public static final WeatherPersonalityType NPOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPOR,
            "コンサルハクトウワシ",
            "頂点捕食者リーダー",
            "/images/weather-personalities/コンサルハクトウワシ_イメージ画像.png"
        );

    // メンターフクロウ
    public static final WeatherPersonalityType NPIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPIE,
            "メンターフクロウ",
            "静かなる賢者",
            "/images/weather-personalities/メンターフクロウ_イメージ画像.png"
        );

    // はたらきデバネズミ
    public static final WeatherPersonalityType NPIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NPIR,
            "はたらきデバネズミ",
            "最もNPIR純度100%",
            "/images/weather-personalities/はたらきデバネズミ_イメージ画像.png"
        );

    // バイブス上がりオウム
    public static final WeatherPersonalityType NFOE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFOE,
            "バイブス上がりオウム",
            "明るいコミュニケーション役",
            "/images/weather-personalities/バイブス上がりオウム_イメージ画像.png"
        );

    // 崖の上のヤギ
    public static final WeatherPersonalityType NFOR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFOR,
            "崖の上のヤギ",
            "現場での高い適応力",
            "/images/weather-personalities/崖の上のヤギ_イメージ画像.png"
        );

    // やわらかタコ
    public static final WeatherPersonalityType NFIE =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFIE,
            "やわらかタコ",
            "孤高のアーティスト",
            "/images/weather-personalities/やわらかタコ_イメージ画像.png"
        );

    // フリーランスモグラ
    public static final WeatherPersonalityType NFIR =
        new WeatherPersonalityType(
            WeatherPersonalityCode.NFIR,
            "フリーランスモグラ",
            "静かに働く合理的ソロワーカー",
            "/images/weather-personalities/フリーランスモグラ_イメージ画像.png"
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
    public String getDescription() { return description; }
    public String getImagePath() { return imagePath; }
}