package com.reimi.reimi_app.infrastructure.web.dto.response;

import com.reimi.reimi_app.domain.external.weather.WeatherCode;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "AI提案のプロンプト取得用レスポンス")
public record GetAiSuggestionResponse (

    @Schema(description = "気温", example = "25.3")
    float temperature,

    @Schema(description = "天気コード", example = "SUNNY")
    WeatherCode weatherCode,

    @Schema(description = "天気アイコンURL")
    String WeatherIconUrl,

    @Schema(description = "AI提案テキスト", example = "暖かい格好をして外に出ましょう")
    String text
) {}
