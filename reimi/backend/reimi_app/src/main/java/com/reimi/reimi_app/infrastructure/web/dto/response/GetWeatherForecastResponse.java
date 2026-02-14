package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.math.BigDecimal;
import java.util.List;

import com.reimi.reimi_app.domain.external.weather.MediumTermForecast;
import com.reimi.reimi_app.domain.external.weather.ShortTermForecast;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ある地点での天気予報の詳細取得用レスポンス")
public record GetWeatherForecastResponse (

    @Schema(description = "緯度", example = "35.681236")
    BigDecimal latitude,

    @Schema(description = "経度", example = "139.767125")
    BigDecimal longitude,

    @Schema(description = "短期予報")
    List<ShortTermForecast> srfs,

    @Schema(description = "中期予報")
    List<MediumTermForecast> mrfs
) {}
