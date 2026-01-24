package com.reimi.reimi_app.infrastructure.web.dto.response;

import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityCode;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザーのウェザーパーソナリティ診断結果表示用レスポンス")
public record DiagnoseResultWeatherPersonalityResponse(

    @Schema(description = "タイプコード", example = "SPOE")
    WeatherPersonalityCode typeCode,

    @Schema(description = "タイプ名", example = "トレーニーラッコ")
    String typeName,

    @Schema(description = "タイプ説明", example = "「共感的ムードメーカー」そのもの")
    String typeDescription,

    @Schema(description = "タイプイメージ画像URL", example = "http://localhost:8080/images/weather-personalities/トレーニーラッコ_イメージ画像.png")
    String typeImageUrl
) {}