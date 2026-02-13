package com.reimi.reimi_app.infrastructure.web.dto.request;

import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;

import com.reimi.reimi_app.domain.model.report.value.FeelingType;
import com.reimi.reimi_app.domain.model.report.value.ForecastType;
import com.reimi.reimi_app.domain.model.report.value.MediaType;
import com.reimi.reimi_app.domain.model.report.value.WeatherType;
import com.reimi.reimi_app.domain.model.report.value.WindDirection;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Digits;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Schema(description = "ユーザーのウェザーリポート投稿用リクエスト")
public record PostWeatherReportRequest(

    @NotBlank(message = "コメントは必須です")
    @Schema(description = "コメント", example = "今日はとても寒いです")
    String comment,

    @NotNull(message = "天気は必須です")
    @Schema(description = "天気", example = "CLEAR_STARS")
    WeatherType weatherType,

    @NotNull(message = "体感は必須です")
    @Schema(description = "体感", example = "VERY_COLD")
    FeelingType feelingType,

    @NotNull(message = "予測は必須です")
    @Schema(description = "予報", example = "NO_CHANGE")
    ForecastType forecastType,

    @NotNull(message = "緯度は必須です")
    @Schema(description = "緯度", example = "35.681236")
    BigDecimal latitude,

    @NotNull(message = "経度は必須です")
    @Schema(description = "経度", example = "139.767125")
    BigDecimal longitude,

    @NotNull(message = "メディアタイプは必須です")
    @Schema(description = "メディアタイプ", example = "IMAGE")
    MediaType mediaType,

    @NotNull(message = "写真は必須です")
    @Schema(description = "天気の写真", type = "string", format = "binary")
    MultipartFile weatherPhoto,

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

) {
    public boolean hasObservation() {
        return temperature != null
            || humidity != null
            || pressure != null
            || windSpeed != null
            || windDirection != null;
    }
}