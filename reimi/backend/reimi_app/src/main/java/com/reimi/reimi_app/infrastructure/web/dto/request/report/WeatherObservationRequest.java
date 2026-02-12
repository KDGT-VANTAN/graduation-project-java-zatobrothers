package com.reimi.reimi_app.infrastructure.web.dto.request.report;

import java.math.BigDecimal;

import com.reimi.reimi_app.domain.model.report.value.WindDirection;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Digits;

@Schema(description = "ウェザーリポートの観測値情報（任意）用リクエスト")
public record WeatherObservationRequest(

    @Schema(description = "気温（℃）", example = "23.5")
    @Digits(integer = 3, fraction = 1, message = "気温の形式が不正です")
    BigDecimal temperature,

    @Schema(description = "湿度（%）", example = "65.0")
    @DecimalMin(value = "0.0", message = "湿度は0以上で入力してください")
    @DecimalMax(value = "100.0", message = "湿度は100以下で入力してください")
    @Digits(integer = 3, fraction = 1, message = "湿度の形式が不正です")
    BigDecimal humidity,

    @Schema(description = "気圧（hPa）", example = "1013.2")
    @Digits(integer = 4, fraction = 1, message = "気圧の形式が不正です")
    BigDecimal pressure,

    @Schema(description = "風速（m/s）", example = "3.5")
    @DecimalMin(value = "0.0", message = "風速は0以上で入力してください")
    @Digits(integer = 3, fraction = 1, message = "風速の形式が不正です")
    BigDecimal windSpeed,

    @Schema(description = "風向", example = "NORTH")
    WindDirection windDirection

) {}