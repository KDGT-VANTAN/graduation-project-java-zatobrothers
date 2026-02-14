package com.reimi.reimi_app.infrastructure.web.dto.request;

import java.math.BigDecimal;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;

@Schema(description = "ある地点での天気予報の詳細取得用リクエスト")
public record WeatherForecastRequest (

    @NotNull(message = "緯度は必須です")
    @Schema(description = "緯度", example = "35.681236")
    BigDecimal latitude,

    @NotNull(message = "経度は必須です")
    @Schema(description = "経度", example = "139.767125")
    BigDecimal longitude

) {}
