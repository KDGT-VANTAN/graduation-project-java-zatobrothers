package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.util.List;
import java.util.Map;

import com.reimi.reimi_app.domain.model.weatherpersonality.AxisFeature;
import com.reimi.reimi_app.domain.model.weatherpersonality.BehaviorTendency;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityAxis;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityCode;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザーのウェザーパーソナリティ診断結果表示用レスポンス")
public record DiagnoseResultWeatherPersonalityResponse(

    @Schema(description = "タイプコード", example = "SPOE")
    WeatherPersonalityCode typeCode,

    @Schema(description = "タイプ名", example = "トレーニーラッコ")
    String typeName,

    @Schema(description = "タイプキャッチコピー", example = "「感情で揺れ、計画で浮かぶ。日々バランス感覚を鍛えている存在。」")
    String typeCatchphrase,

    @Schema(description = "タイプイメージ画像URL", example = "http://localhost:8080/images/weather-personalities/トレーニーラッコ_イメージ画像.png")
    String typeImageUrl,

    @Schema(description = "神様の裁定文（ストーリー）", example = "神様は、前世のあなたが...")
    String rulingStatement,

    @Schema(description = "4軸に対する特徴", example = "[\n" +
        "  {\n" +
        "    \"axis\": \"SENSITIVITY\",\n" +
        "    \"polarity\": \"SENSITIVE\",\n" +
        "    \"description\": \"天気・空気・人の機嫌を即座に察知。\\nちょっとした曇り空でも『今日はそういう日かも』と感じ取る。\"\n" +
        "  }\n" +
        "]")
    List<AxisFeature> axisFeatures,

    @Schema(
        description = "ユーザーの軸ごとのスコア",
        example = """
        {
            "SENSITIVITY": 8,
            "PREPAREDNESS": 8,
            "ACTIVITY": 8,
            "MOTIVATION": 8
        }
        """
    )
    Map<WeatherPersonalityAxis, Integer> userAxisScore,

    @Schema(description = "あなたの行動傾向（具体例つき）", example = "[\n" +
        "  {\n" +
        "    \"summary\": \"天気予報を見てから予定を組み直す\",\n" +
        "    \"detail\": \"『雨か…じゃあカフェ多めの日にしよう』と柔軟に修正。\"\n" +
        "  }\n" +
        "]")
    List<BehaviorTendency> behaviorTendencies,

    @Schema(description = "神様からの一言", example = "あなたは、感情を弱点にせず、...")
    String godsMessage

) {}